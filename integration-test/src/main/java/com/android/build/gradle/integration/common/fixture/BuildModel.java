/*
 * Copyright (C) 2016 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.android.build.gradle.integration.common.fixture;

import static com.android.build.gradle.integration.common.truth.TruthHelper.assertThat;
import static org.junit.Assert.fail;

import com.android.annotations.NonNull;
import com.android.build.gradle.AndroidGradleOptions;
import com.android.build.gradle.integration.common.fixture.GetAndroidModelAction.ModelContainer;
import com.android.builder.model.AndroidProject;
import com.android.builder.model.NativeAndroidProject;
import com.android.builder.model.SyncIssue;
import com.google.common.base.MoreObjects;
import com.google.common.base.Preconditions;
import com.google.common.collect.Iterables;
import com.google.common.collect.Lists;
import java.io.Closeable;
import java.io.IOException;
import java.io.UncheckedIOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;
import org.gradle.tooling.BuildAction;
import org.gradle.tooling.BuildActionExecuter;
import org.gradle.tooling.ProjectConnection;
import org.gradle.tooling.model.GradleProject;
import org.gradle.tooling.model.GradleTask;

/**
 * Builder for actions that get the gradle model from a {@link GradleTestProject}.
 *
 * <p>Example: <code>project.model().asStudio1().getMulti()</code> fetches the model for all
 * subprojects as Studio 1.0 does.
 */
public class BuildModel extends BaseGradleExecutor<BuildModel> {

    public enum Feature {
        /** full dependencies, including package graph, and provided and skipped properties. */
        FULL_DEPENDENCIES(AndroidProject.PROPERTY_BUILD_MODEL_FEATURE_FULL_DEPENDENCIES);

        private String featureName;

        Feature(String featureName) {
            this.featureName = featureName;
        }
    }

    private boolean mAssertNoSyncIssues = true;

    private int modelLevel = AndroidProject.MODEL_LEVEL_LATEST;
    private final boolean isImproveDependencyEnabled;
    private final List<String> modelFeatures = Lists.newArrayList();

    BuildModel(@NonNull GradleTestProject project, @NonNull ProjectConnection projectConnection) {
        super(
                projectConnection,
                project.getTestDir().toPath(),
                project.getBuildFile().toPath(),
                project.getBenchmarkRecorder(),
                project.getProfileDirectory(),
                project.getHeapSize());
        isImproveDependencyEnabled = project.isImprovedDependencyEnabled();
    }

    /** Do not fail if there are sync issues */
    public BuildModel ignoreSyncIssues() {
        Preconditions.checkState(modelLevel != AndroidProject.MODEL_LEVEL_0_ORIGINAL,
                "Studio 1 was not aware of sync issues.");
        mAssertNoSyncIssues = false;
        return this;
    }

    /** Fetch the model as studio 1.0 would. */
    public BuildModel asStudio1() {
        Preconditions.checkState(mAssertNoSyncIssues, "Studio 1 was not aware of sync issues.");
        return level(AndroidProject.MODEL_LEVEL_0_ORIGINAL);
    }

    /**
     * Fetch the model as studio would, with the specified model level.
     *
     * <p>See AndroidProject.MODEL_LEVEL_...
     */
    public BuildModel level(int modelLevel) {
        this.modelLevel = modelLevel;
        return this;
    }

    public BuildModel withFeature(Feature feature) {
        modelFeatures.add(feature.featureName);
        return this;
    }

    /**
     * Returns the project model.
     *
     * This will fail if the project is a multi-project setup.
     */
    public ModelContainer<AndroidProject> getSingle() {
        ModelContainer<AndroidProject> container = getSingleModel(AndroidProject.class);
        if (mAssertNoSyncIssues) {
            AndroidProject project = Iterables.getOnlyElement(container.getModelMap().values());
            assertNoSyncIssues(project.getName(), project);
        }
        return container;
    }

    /**
     * Returns the project model.
     *
     * This will fail if the project is a multi-project setup.
     */
    public <T> T getSingle(@NonNull Class<T> modelClass) {
        // if passing AndroidStudio.class, use getSingle() instead
        assertThat(modelClass)
                .named("Class name in getSingle(Class<T>)")
                .isNotEqualTo(AndroidProject.class);

        ModelContainer<T> container = getSingleModel(modelClass);

        return Iterables.getOnlyElement(container.getModelMap().values());
    }

    /**
     * Returns the project model.
     *
     * This will fail if the project is a multi-project setup.
     */
    private <T> ModelContainer<T> getSingleModel(@NonNull Class<T> modelClass) {
        ModelContainer<T> container = buildModel(
                projectConnection,
                new GetAndroidModelAction<T>(modelClass),
                modelLevel);

        // ensure there was only one project
        assertThat(container.getModelMap())
                .named("Quering GradleTestProject.getModel() with multi-project settings")
                .hasSize(1);

        return container;
    }


    /** Returns a project model for each sub-project. */
    public ModelContainer<AndroidProject> getMulti() {
        ModelContainer<AndroidProject> container = getMultiContainer(AndroidProject.class);
        if (mAssertNoSyncIssues) {
            container.getModelMap().forEach(BuildModel::assertNoSyncIssues);
        }
        return container;
    }

    /** Returns a project model for each sub-project. */
    public <T> Map<String, T> getMulti(@NonNull Class<T> modelClass) {
        assertThat(modelClass)
                .named("class name in getMulti(Class<T>)")
                .isNotEqualTo(AndroidProject.class);

        return getMultiContainer(modelClass).getModelMap();
    }

    private <T> ModelContainer<T> getMultiContainer(@NonNull Class<T> modelClass) {
        // TODO: Make buildModel multithreaded all the time.
        // Getting multiple NativeAndroidProject results in duplicated class implemented error
        // in a multithreaded environment.  This is due to issues in Gradle relating to the
        // automatic generation of the implementation class of NativeSourceSet.  Make this
        // multithreaded when the issue is resolved.
        boolean isMultithreaded = !NativeAndroidProject.class.equals(modelClass);

        return buildModel(
                projectConnection,
                new GetAndroidModelAction<>(modelClass, isMultithreaded),
                modelLevel);
    }

    /** Return a list of all task names of the project. */
    @NonNull
    public List<String> getTaskList() {
        GradleProject project = projectConnection.getModel(GradleProject.class);
        return project.getTasks().stream()
                .map(GradleTask::getName)
                .collect(Collectors.toList());

    }

    /**
     * Returns a project model for each sub-project;
     *
     * @param connection the opened ProjectConnection
     * @param action     the build action to gather the model
     * @param modelLevel whether to emulate an older IDE (studio 1.0) querying the model.
     */
    @NonNull
    private <T> ModelContainer<T> buildModel(
            @NonNull ProjectConnection connection,
            @NonNull BuildAction<ModelContainer<T>> action,
            int modelLevel) {
        BuildActionExecuter<ModelContainer<T>> executor = connection.action(action);

        List<String> arguments = Lists.newArrayListWithCapacity(5);
        arguments.add("-P" + AndroidProject.PROPERTY_BUILD_MODEL_ONLY + "=true");
        arguments.add("-P" + AndroidProject.PROPERTY_INVOKED_FROM_IDE + "=true");
        arguments.add("-P" + AndroidGradleOptions.PROPERTY_BUILD_CACHE_DIR + "=" + getBuildCacheDir());

        switch (modelLevel) {
            case AndroidProject.MODEL_LEVEL_0_ORIGINAL:
                // nothing.
                break;
            case AndroidProject.MODEL_LEVEL_2_DONT_USE:
                arguments.add("-P" + AndroidProject.PROPERTY_BUILD_MODEL_ONLY_VERSIONED + "="
                        + modelLevel);
                // intended fall-through
            case AndroidProject.MODEL_LEVEL_1_SYNC_ISSUE:
                arguments.add("-P" + AndroidProject.PROPERTY_BUILD_MODEL_ONLY_ADVANCED + "=true");
                break;
            default:
                throw new RuntimeException("Unsupported ModelLevel");
        }

        if (isImproveDependencyEnabled) {
            arguments.add("-P"
                    + AndroidGradleOptions.PROPERTY_ENABLE_IMPROVED_DEPENDENCY_RESOLUTION
                    + "=true");
        }

        // model feature
        for (String feature : modelFeatures) {
            arguments.add("-P" + feature + "=true");
        }

        arguments.addAll(getOfflineFlag());

        setJvmArguments(executor);

        executor.setStandardOutput(System.out);
        executor.setStandardError(System.err);

        // See ProfileCapturer javadoc for explanation.
        try (Closeable ignored =
                new ProfileCapturer(benchmarkRecorder, benchmarkMode, profilesDirectory)) {
            executor.withArguments(Iterables.toArray(arguments, String.class));
            return executor.run();
        } catch (IOException e) {
            throw new UncheckedIOException(e);
        }
    }

    private static void assertNoSyncIssues(@NonNull String name, @NonNull AndroidProject project) {
        if (!project.getSyncIssues().isEmpty()) {
            StringBuilder msg = new StringBuilder();
            msg.append("Project ").append(name).append(" had sync issues :\n");
            for (SyncIssue syncIssue : project.getSyncIssues()) {
                msg.append(
                        MoreObjects.toStringHelper(SyncIssue.class)
                                .add(
                                        "type",
                                        getIntConstantName(
                                                SyncIssue.class, "TYPE", syncIssue.getType()))
                                .add(
                                        "severity",
                                        getIntConstantName(
                                                SyncIssue.class,
                                                "SEVERITY",
                                                syncIssue.getSeverity()))
                                .add("data", syncIssue.getData())
                                .add("message", syncIssue.getMessage())
                                .toString());
                msg.append("\n");
            }
            fail(msg.toString());
        }
    }

    @NonNull
    private static String getIntConstantName(
            @NonNull Class<?> clazz, @NonNull String prefix, int value) {
        return Arrays.stream(clazz.getFields())
                .filter(field -> field.getName().startsWith(prefix))
                .filter(
                        field -> {
                            try {
                                return field.getInt(null) == value;
                            } catch (IllegalAccessException e) {
                                return false;
                            }
                        })
                .map(Field::getName)
                .findAny()
                .orElseGet(() -> Integer.toString(value));
    }
}
