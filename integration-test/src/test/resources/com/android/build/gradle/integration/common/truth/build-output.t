  [GradleTestProject] Executing tasks: gradle -i -u -Pcom.android.build.gradle.integratonTest.useJack=false -Pcom.android.build.gradle.integratonTest.minifyEnabled=false -Pandroid.builder.sdkDownload=false --build-file=/android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding/build.atom-withoutadapters.gradle assembleDebug
The client will now receive all logging from the daemon (pid: 65663). The daemon log file: /android/studio-master-dev/out/.gradle/daemon/2.14.1/daemon-65663.out.log
Starting build in new daemon [memory: 3.8 GB]
Closing daemon's stdin at end of input.
The daemon will no longer process any standard input.
Executing build with daemon context: DefaultDaemonContext[uid=886f67e2-c2fc-4bbc-8095-37663d5bdd61,javaHome=/Library/Java/JavaVirtualMachines/jdk1.8.0_91.jdk/Contents/Home,daemonRegistryDir=/android/studio-master-dev/out/.gradle/daemon,pid=65663,idleTimeout=10000,daemonOpts=-XX:MaxPermSize=1024m,-Dfile.encoding=UTF-8,-Djava.io.tmpdir=/android/studio-master-dev/out/build/base/integration-test/build/tmp,-Duser.country=US,-Duser.language=en,-Duser.variant]
Starting Build
Settings evaluated using empty settings script.
Projects loaded. Root project using build file '/android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding/build.atom-withoutadapters.gradle'.
Included projects: [root project 'databinding']
Evaluating root project 'databinding' using build file '/android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding/build.atom-withoutadapters.gradle'.
Compiling build file '/android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding/build.atom-withoutadapters.gradle' using BuildScriptTransformer.
Creating configuration compile
Creating configuration publish
Creating configuration testReleaseAnnotationProcessor
Creating configuration testReleaseJackPlugin
Parsing the SDK, no caching allowed
Parsing /android-sdk/tools/package.xml
SDK initialized in 1013 ms
Incremental Java compilation disabled in variant debug as you are using an incompatible plugin
Not using incremental javac compilation for : debug.
Incremental Java compilation disabled in variant debugUnitTest as you are using an incompatible plugin
Not using incremental javac compilation for : debugUnitTest.
Incremental Java compilation disabled in variant release as you are using an incompatible plugin
Not using incremental javac compilation for : release.
Incremental Java compilation disabled in variant releaseUnitTest as you are using an incompatible plugin
Not using incremental javac compilation for : releaseUnitTest.
Incremental Java compilation disabled in variant debugAndroidTest as you are using an incompatible plugin
Not using incremental javac compilation for : debugAndroidTest.
All projects evaluated.
Selected primary task 'assembleDebug' from project :
Tasks to be executed: [task ':preBuild', task ':preDebugAtomBuild', task ':checkDebugAtomManifest', task ':preReleaseAtomBuild', task ':prepareComAndroidDatabindingLibrary131Library', task ':prepareComAndroidSupportSupportV42103Library', task ':prepareDebugAtomDependencies', task ':compileDebugAtomRenderscript', task ':generateDebugAtomResValues', task ':generateDebugAtomResources', task ':mergeDebugAtomResources', task ':dataBindingProcessLayoutsDebugAtom', task ':compileDebugAtomAidl', task ':generateDebugAtomBuildConfig', task ':processDebugAtomManifest', task ':processDebugAtomResources', task ':generateDebugAtomSources', task ':dataBindingExportBuildInfoDebugAtom', task ':incrementalDebugAtomJavaCompilationSafeguard', task ':javaPreCompileDebugAtom', task ':transformClassesAndDataBindingWithDataBindingMergeArtifactsForDebugAtom', task ':compileDebugAtomJavaWithJavac', task ':generateDebugAtomMetadata', task ':jarDebugAtomClasses', task ':mergeDebugAtomShaders', task ':compileDebugAtomShaders', task ':generateDebugAtomAssets', task ':mergeDebugAtomAssets', task ':transformClassesWithDexForDebugAtom', task ':compileDebugAtomNdk', task ':mergeDebugAtomJniLibFolders', task ':transformNativeLibsWithMergeJniLibsForDebugAtom', task ':transformNativeLibsWithStripDebugSymbolForDebugAtom', task ':processDebugAtomJavaRes', task ':transformResourcesWithMergeJavaResForDebugAtom', task ':bundleDebugAtom', task ':compileDebugAtomSources', task ':assembleDebug']
Creating In-memory cache of /android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding/.gradle/2.14.1/taskArtifacts/fileHashes.bin: MaxSize{1837300}
Creating In-memory cache of /android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding/.gradle/2.14.1/taskArtifacts/treeSnapshots.bin: MaxSize{91800}
Creating In-memory cache of /android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding/.gradle/2.14.1/taskArtifacts/treeSnapshotUsage.bin: MaxSize{91800}
Creating In-memory cache of /android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding/.gradle/2.14.1/taskArtifacts/fileSnapshotsToTreeSnapshotsIndex.bin: MaxSize{45900}
Creating In-memory cache of /android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding/.gradle/2.14.1/taskArtifacts/fileSnapshots.bin: MaxSize{45900}
Creating In-memory cache of /android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding/.gradle/2.14.1/taskArtifacts/taskArtifacts.bin: MaxSize{9100}
:preBuild (Thread[Daemon worker,5,main]) started.
:preBuild
Skipping task ':preBuild' as it has no actions.
:preBuild UP-TO-DATE
:preBuild (Thread[Daemon worker,5,main]) completed. Took 0.01 secs.
:preDebugAtomBuild (Thread[Daemon worker,5,main]) started.
:preDebugAtomBuild
Skipping task ':preDebugAtomBuild' as it has no actions.
:preDebugAtomBuild UP-TO-DATE
:preDebugAtomBuild (Thread[Daemon worker,5,main]) completed. Took 0.002 secs.
:checkDebugAtomManifest (Thread[Daemon worker,5,main]) started.
:checkDebugAtomManifest
Executing task ':checkDebugAtomManifest' (up-to-date check took 0.001 secs) due to:
  Task has not declared any outputs.
:checkDebugAtomManifest (Thread[Daemon worker,5,main]) completed. Took 0.01 secs.
:preReleaseAtomBuild (Thread[Daemon worker,5,main]) started.
:preReleaseAtomBuild
Skipping task ':preReleaseAtomBuild' as it has no actions.
:preReleaseAtomBuild UP-TO-DATE
:preReleaseAtomBuild (Thread[Daemon worker,5,main]) completed. Took 0.002 secs.
:prepareComAndroidDatabindingLibrary131Library (Thread[Daemon worker,5,main]) started.
:prepareComAndroidDatabindingLibrary131Library
Invalidating in-memory cache of /android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding/.gradle/2.14.1/taskArtifacts/treeSnapshotUsage.bin
Invalidating in-memory cache of /android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding/.gradle/2.14.1/taskArtifacts/taskArtifacts.bin
Invalidating in-memory cache of /android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding/.gradle/2.14.1/taskArtifacts/treeSnapshots.bin
Invalidating in-memory cache of /android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding/.gradle/2.14.1/taskArtifacts/fileSnapshots.bin
Invalidating in-memory cache of /android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding/.gradle/2.14.1/taskArtifacts/fileHashes.bin
Invalidating in-memory cache of /android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding/.gradle/2.14.1/taskArtifacts/fileSnapshotsToTreeSnapshotsIndex.bin
Executing task ':prepareComAndroidDatabindingLibrary131Library' (up-to-date check took 0.032 secs) due to:
  No history is available.
:prepareComAndroidDatabindingLibrary131Library (Thread[Daemon worker,5,main]) completed. Took 0.109 secs.
:prepareComAndroidSupportSupportV42103Library (Thread[Daemon worker,5,main]) started.
:prepareComAndroidSupportSupportV42103Library
Executing task ':prepareComAndroidSupportSupportV42103Library' (up-to-date check took 0.001 secs) due to:
  No history is available.
:prepareComAndroidSupportSupportV42103Library (Thread[Daemon worker,5,main]) completed. Took 0.056 secs.
:prepareDebugAtomDependencies (Thread[Daemon worker,5,main]) started.
:prepareDebugAtomDependencies
Executing task ':prepareDebugAtomDependencies' (up-to-date check took 0.0 secs) due to:
  Task has not declared any outputs.
:prepareDebugAtomDependencies (Thread[Daemon worker,5,main]) completed. Took 0.001 secs.
:compileDebugAtomRenderscript (Thread[Daemon worker,5,main]) started.
:compileDebugAtomRenderscript
Executing task ':compileDebugAtomRenderscript' (up-to-date check took 0.001 secs) due to:
  No history is available.
:compileDebugAtomRenderscript (Thread[Daemon worker,5,main]) completed. Took 0.01 secs.
:generateDebugAtomResValues (Thread[Daemon worker,5,main]) started.
:generateDebugAtomResValues
Executing task ':generateDebugAtomResValues' (up-to-date check took 0.0 secs) due to:
  No history is available.
:generateDebugAtomResValues (Thread[Daemon worker,5,main]) completed. Took 0.004 secs.
:generateDebugAtomResources (Thread[Daemon worker,5,main]) started.
:generateDebugAtomResources
Skipping task ':generateDebugAtomResources' as it has no actions.
:generateDebugAtomResources (Thread[Daemon worker,5,main]) completed. Took 0.001 secs.
:mergeDebugAtomResources (Thread[Daemon worker,5,main]) started.
:mergeDebugAtomResources
Executing task ':mergeDebugAtomResources' (up-to-date check took 0.005 secs) due to:
  No history is available.
All input files are considered out-of-date for incremental task ':mergeDebugAtomResources'.
Unable do incremental execution: full task run
QueuedCruncher is using /android-sdk/build-tools/25.0.0/aapt
Thread(Daemon worker): begin waitForAll
Thread(Daemon worker): end waitForAll
Job finished in 0
Shutdown finished in 1
:mergeDebugAtomResources (Thread[Daemon worker,5,main]) completed. Took 0.135 secs.
:dataBindingProcessLayoutsDebugAtom (Thread[Daemon worker,5,main]) started.
:dataBindingProcessLayoutsDebugAtom
Executing task ':dataBindingProcessLayoutsDebugAtom' (up-to-date check took 0.004 secs) due to:
  No history is available.
All input files are considered out-of-date for incremental task ':dataBindingProcessLayoutsDebugAtom'.
:dataBindingProcessLayoutsDebugAtom (Thread[Daemon worker,5,main]) completed. Took 0.19 secs.
:compileDebugAtomAidl (Thread[Daemon worker,5,main]) started.
:compileDebugAtomAidl
Executing task ':compileDebugAtomAidl' (up-to-date check took 0.005 secs) due to:
  No history is available.
All input files are considered out-of-date for incremental task ':compileDebugAtomAidl'.
:compileDebugAtomAidl (Thread[Daemon worker,5,main]) completed. Took 0.015 secs.
:generateDebugAtomBuildConfig (Thread[Daemon worker,5,main]) started.
:generateDebugAtomBuildConfig
Executing task ':generateDebugAtomBuildConfig' (up-to-date check took 0.001 secs) due to:
  No history is available.
:generateDebugAtomBuildConfig (Thread[Daemon worker,5,main]) completed. Took 0.011 secs.
:processDebugAtomManifest (Thread[Daemon worker,5,main]) started.
:processDebugAtomManifest
Executing task ':processDebugAtomManifest' (up-to-date check took 0.001 secs) due to:
  No history is available.
All input files are considered out-of-date for incremental task ':processDebugAtomManifest'.
Merging main manifest /android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding/src/main/AndroidManifest.xml

Merging result: SUCCESS


Merged manifest saved to /android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding/build/intermediates/atombundles/debug/AndroidManifest.xml
:processDebugAtomManifest (Thread[Daemon worker,5,main]) completed. Took 0.071 secs.
:processDebugAtomResources (Thread[Daemon worker,5,main]) started.
:processDebugAtomResources
Executing task ':processDebugAtomResources' (up-to-date check took 0.003 secs) due to:
  No history is available.
All input files are considered out-of-date for incremental task ':processDebugAtomResources'.
QueuedCruncher is using /android-sdk/build-tools/25.0.0/aapt
Custom package for R class: 'android.databinding.testapp'
Starting process 'command '/android-sdk/build-tools/25.0.0/aapt''. Working directory: /android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding Command: /android-sdk/build-tools/25.0.0/aapt package -f --no-crunch -I /android-sdk/platforms/android-24/android.jar -M /android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding/build/intermediates/manifests/aapt/debug/AndroidManifest.xml -S /android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding/build/intermediates/data-binding-layout-out/debug -m -J /android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding/build/generated/source/r/debug -F /android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding/build/intermediates/atombundles/debug/resources.ap_ --debug-mode --custom-package android.databinding.testapp -0 apk --output-text-symbols /android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding/build/intermediates/symbols/debug --no-version-vectors
Successfully started process 'command '/android-sdk/build-tools/25.0.0/aapt''
Aapt output file /android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding/build/intermediates/atombundles/debug/resources.ap_
:processDebugAtomResources (Thread[Daemon worker,5,main]) completed. Took 0.156 secs.
:generateDebugAtomSources (Thread[Daemon worker,5,main]) started.
:generateDebugAtomSources
Skipping task ':generateDebugAtomSources' as it has no actions.
:generateDebugAtomSources (Thread[Daemon worker,5,main]) completed. Took 0.001 secs.
:dataBindingExportBuildInfoDebugAtom (Thread[Daemon worker,5,main]) started.
:dataBindingExportBuildInfoDebugAtom
file or directory '/android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding/src/debug/java', not found
Executing task ':dataBindingExportBuildInfoDebugAtom' (up-to-date check took 0.005 secs) due to:
  No history is available.
All input files are considered out-of-date for incremental task ':dataBindingExportBuildInfoDebugAtom'.
:dataBindingExportBuildInfoDebugAtom (Thread[Daemon worker,5,main]) completed. Took 0.017 secs.
:incrementalDebugAtomJavaCompilationSafeguard (Thread[Daemon worker,5,main]) started.
:incrementalDebugAtomJavaCompilationSafeguard
Executing task ':incrementalDebugAtomJavaCompilationSafeguard' (up-to-date check took 0.003 secs) due to:
  No history is available.
All input files are considered out-of-date for incremental task ':incrementalDebugAtomJavaCompilationSafeguard'.
:incrementalDebugAtomJavaCompilationSafeguard (Thread[Daemon worker,5,main]) completed. Took 0.009 secs.
:javaPreCompileDebugAtom (Thread[Daemon worker,5,main]) started.
:javaPreCompileDebugAtom
Executing task ':javaPreCompileDebugAtom' (up-to-date check took 0.0 secs) due to:
  Task has not declared any outputs.
:javaPreCompileDebugAtom (Thread[Daemon worker,5,main]) completed. Took 0.001 secs.
:transformClassesAndDataBindingWithDataBindingMergeArtifactsForDebugAtom (Thread[Daemon worker,5,main]) started.
:transformClassesAndDataBindingWithDataBindingMergeArtifactsForDebugAtom
Executing task ':transformClassesAndDataBindingWithDataBindingMergeArtifactsForDebugAtom' (up-to-date check took 0.001 secs) due to:
  No history is available.
All input files are considered out-of-date for incremental task ':transformClassesAndDataBindingWithDataBindingMergeArtifactsForDebugAtom'.
:transformClassesAndDataBindingWithDataBindingMergeArtifactsForDebugAtom (Thread[Daemon worker,5,main]) completed. Took 0.066 secs.
:compileDebugAtomJavaWithJavac (Thread[Daemon worker,5,main]) started.
:compileDebugAtomJavaWithJavac
file or directory '/android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding/src/debug/java', not found
Executing task ':compileDebugAtomJavaWithJavac' (up-to-date check took 0.005 secs) due to:
  No history is available.
All input files are considered out-of-date for incremental task ':compileDebugAtomJavaWithJavac'.
Compiling with source level 1.7 and target level 1.7.
file or directory '/android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding/src/debug/java', not found
Compiling with JDK Java compiler API.
:compileDebugAtomJavaWithJavac (Thread[Daemon worker,5,main]) completed. Took 1.607 secs.
:generateDebugAtomMetadata (Thread[Daemon worker,5,main]) started.
:generateDebugAtomMetadata
Executing task ':generateDebugAtomMetadata' (up-to-date check took 0.001 secs) due to:
  No history is available.
:generateDebugAtomMetadata (Thread[Daemon worker,5,main]) completed. Took 0.013 secs.
:jarDebugAtomClasses (Thread[Daemon worker,5,main]) started.
:jarDebugAtomClasses
Executing task ':jarDebugAtomClasses' (up-to-date check took 0.001 secs) due to:
  No history is available.
:jarDebugAtomClasses (Thread[Daemon worker,5,main]) completed. Took 0.028 secs.
:mergeDebugAtomShaders (Thread[Daemon worker,5,main]) started.
:mergeDebugAtomShaders
Executing task ':mergeDebugAtomShaders' (up-to-date check took 0.001 secs) due to:
  No history is available.
All input files are considered out-of-date for incremental task ':mergeDebugAtomShaders'.
Unable do incremental execution: full task run
:mergeDebugAtomShaders (Thread[Daemon worker,5,main]) completed. Took 0.006 secs.
:compileDebugAtomShaders (Thread[Daemon worker,5,main]) started.
:compileDebugAtomShaders
Executing task ':compileDebugAtomShaders' (up-to-date check took 0.001 secs) due to:
  No history is available.
:compileDebugAtomShaders (Thread[Daemon worker,5,main]) completed. Took 0.005 secs.
:generateDebugAtomAssets (Thread[Daemon worker,5,main]) started.
:generateDebugAtomAssets
Skipping task ':generateDebugAtomAssets' as it has no actions.
:generateDebugAtomAssets (Thread[Daemon worker,5,main]) completed. Took 0.0 secs.
:mergeDebugAtomAssets (Thread[Daemon worker,5,main]) started.
:mergeDebugAtomAssets
Executing task ':mergeDebugAtomAssets' (up-to-date check took 0.001 secs) due to:
  No history is available.
All input files are considered out-of-date for incremental task ':mergeDebugAtomAssets'.
Unable do incremental execution: full task run
:mergeDebugAtomAssets (Thread[Daemon worker,5,main]) completed. Took 0.005 secs.
:transformClassesWithDexForDebugAtom (Thread[Daemon worker,5,main]) started.
:transformClassesWithDexForDebugAtom
Executing task ':transformClassesWithDexForDebugAtom' (up-to-date check took 0.002 secs) due to:
  No history is available.
All input files are considered out-of-date for incremental task ':transformClassesWithDexForDebugAtom'.
Task is incremental : false 
JarInputs ImmutableJarInput{name=63a52d60472c79415486a899a306e34c528e8107, file=/android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding/build/intermediates/exploded-aar/com.android.databinding/library/1.3.1/jars/classes.jar, contentTypes=CLASSES, scopes=EXTERNAL_LIBRARIES, status=NOTCHANGED},ImmutableJarInput{name=8c75de44d422aacc9c51f7e7311ce28bd79f8843, file=/android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding/build/intermediates/exploded-aar/com.android.support/support-v4/21.0.3/jars/classes.jar, contentTypes=CLASSES, scopes=EXTERNAL_LIBRARIES, status=NOTCHANGED},ImmutableJarInput{name=93fb52cefeb03f6a93a2cd5d98591e278be48e9e, file=/android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding/build/intermediates/exploded-aar/com.android.support/support-v4/21.0.3/jars/libs/internal_impl-21.0.3.jar, contentTypes=CLASSES, scopes=EXTERNAL_LIBRARIES, status=NOTCHANGED},ImmutableJarInput{name=730fdd22d2bbc4f3acfa70e3afd89ab5ee83579f, file=/android-sdk/extras/android/m2repository/com/android/support/support-annotations/21.0.3/support-annotations-21.0.3.jar, contentTypes=CLASSES, scopes=EXTERNAL_LIBRARIES, status=NOTCHANGED},ImmutableJarInput{name=f1aa8a925c775e5ba0a8259a1397a09c60c289f6, file=/android/studio-master-dev/out/repo/com/android/databinding/baseLibrary/2.3.0-dev/baseLibrary-2.3.0-dev.jar, contentTypes=CLASSES, scopes=EXTERNAL_LIBRARIES, status=NOTCHANGED}
DirInputs ImmutableDirectoryInput{name=dfe06dae96c56365712b283cf8cdf6ca7b527fce, file=/android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding/build/intermediates/classes/debug, contentTypes=CLASSES, scopes=PROJECT, changedFiles={}}
Changed file for /android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding/build/intermediates/classes/debug are 
inputFiles : /android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding/build/intermediates/exploded-aar/com.android.databinding/library/1.3.1/jars/classes.jar=/android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding/build/intermediates/pre-dexed/debug/com.android.databinding-library-1.3.1_63a52d60472c79415486a899a306e34c528e8107.jar,/android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding/build/intermediates/classes/debug=/android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding/build/intermediates/pre-dexed/debug/debug_dfe06dae96c56365712b283cf8cdf6ca7b527fce.jar,/android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding/build/intermediates/exploded-aar/com.android.support/support-v4/21.0.3/jars/classes.jar=/android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding/build/intermediates/pre-dexed/debug/com.android.support-support-v4-21.0.3_8c75de44d422aacc9c51f7e7311ce28bd79f8843.jar,/android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding/build/intermediates/exploded-aar/com.android.support/support-v4/21.0.3/jars/libs/internal_impl-21.0.3.jar=/android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding/build/intermediates/pre-dexed/debug/internal_impl-21.0.3_93fb52cefeb03f6a93a2cd5d98591e278be48e9e.jar,/android-sdk/extras/android/m2repository/com/android/support/support-annotations/21.0.3/support-annotations-21.0.3.jar=/android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding/build/intermediates/pre-dexed/debug/support-annotations-21.0.3_730fdd22d2bbc4f3acfa70e3afd89ab5ee83579f.jar,/android/studio-master-dev/out/repo/com/android/databinding/baseLibrary/2.3.0-dev/baseLibrary-2.3.0-dev.jar=/android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding/build/intermediates/pre-dexed/debug/baseLibrary-2.3.0-dev_f1aa8a925c775e5ba0a8259a1397a09c60c289f6.jar
externalLibJarFiles /android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding/build/intermediates/exploded-aar/com.android.databinding/library/1.3.1/jars/classes.jar,/android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding/build/intermediates/exploded-aar/com.android.support/support-v4/21.0.3/jars/classes.jar,/android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding/build/intermediates/exploded-aar/com.android.support/support-v4/21.0.3/jars/libs/internal_impl-21.0.3.jar,/android-sdk/extras/android/m2repository/com/android/support/support-annotations/21.0.3/support-annotations-21.0.3.jar,/android/studio-master-dev/out/repo/com/android/databinding/baseLibrary/2.3.0-dev/baseLibrary-2.3.0-dev.jar: 
Adding PreDexTask for /android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding/build/intermediates/exploded-aar/com.android.databinding/library/1.3.1/jars/classes.jar : com.android.build.gradle.internal.transforms.DexTransform$PreDexTask@4be9e994
Adding PreDexTask for /android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding/build/intermediates/classes/debug : com.android.build.gradle.internal.transforms.DexTransform$PreDexTask@6f4880a5
predex called for /android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding/build/intermediates/exploded-aar/com.android.databinding/library/1.3.1/jars/classes.jar
Adding PreDexTask for /android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding/build/intermediates/exploded-aar/com.android.support/support-v4/21.0.3/jars/classes.jar : com.android.build.gradle.internal.transforms.DexTransform$PreDexTask@7c2f38b8
predex called for /android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding/build/intermediates/classes/debug
predex called for /android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding/build/intermediates/exploded-aar/com.android.support/support-v4/21.0.3/jars/classes.jar
AndroidBuilder::preDexLibrary /android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding/build/intermediates/classes/debug
AndroidBuilder::preDexLibraryNoCache /android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding/build/intermediates/classes/debug
AndroidBuilder::preDexLibrary /android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding/build/intermediates/exploded-aar/com.android.databinding/library/1.3.1/jars/classes.jar
Allocated dexExecutorService of size 4.
Adding PreDexTask for /android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding/build/intermediates/exploded-aar/com.android.support/support-v4/21.0.3/jars/libs/internal_impl-21.0.3.jar : com.android.build.gradle.internal.transforms.DexTransform$PreDexTask@5e0c774f
Adding PreDexTask for /android-sdk/extras/android/m2repository/com/android/support/support-annotations/21.0.3/support-annotations-21.0.3.jar : com.android.build.gradle.internal.transforms.DexTransform$PreDexTask@579e9269
predex called for /android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding/build/intermediates/exploded-aar/com.android.support/support-v4/21.0.3/jars/libs/internal_impl-21.0.3.jar
predex called for /android-sdk/extras/android/m2repository/com/android/support/support-annotations/21.0.3/support-annotations-21.0.3.jar
Adding PreDexTask for /android/studio-master-dev/out/repo/com/android/databinding/baseLibrary/2.3.0-dev/baseLibrary-2.3.0-dev.jar : com.android.build.gradle.internal.transforms.DexTransform$PreDexTask@7b4d913f
preDexLibrary : DxDexKey{dexKey=DxDexKey{buildTools=25.0.0, sourceFile=/android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding/build/intermediates/exploded-aar/com.android.databinding/library/1.3.1/jars/classes.jar, mJumboMode=false, mOptimize=true}, mAdditionalParameters=[], mIsMultiDex=false}
AndroidBuilder::preDexLibrary /android-sdk/extras/android/m2repository/com/android/support/support-annotations/21.0.3/support-annotations-21.0.3.jar
StoredItem is null
predex called for /android/studio-master-dev/out/repo/com/android/databinding/baseLibrary/2.3.0-dev/baseLibrary-2.3.0-dev.jar
Dexing in-process : /android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding/build/intermediates/classes/debug
preDexLibrary : DxDexKey{dexKey=DxDexKey{buildTools=25.0.0, sourceFile=/android-sdk/extras/android/m2repository/com/android/support/support-annotations/21.0.3/support-annotations-21.0.3.jar, mJumboMode=false, mOptimize=true}, mAdditionalParameters=[], mIsMultiDex=false}
StoredItem is null
Item from cache Item{mOutputFiles=[], mSourceFile=/android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding/build/intermediates/exploded-aar/com.android.databinding/library/1.3.1/jars/classes.jar}
AndroidBuilder::preDexLibrary /android/studio-master-dev/out/repo/com/android/databinding/baseLibrary/2.3.0-dev/baseLibrary-2.3.0-dev.jar
Item from cache Item{mOutputFiles=[], mSourceFile=/android-sdk/extras/android/m2repository/com/android/support/support-annotations/21.0.3/support-annotations-21.0.3.jar}
AndroidBuilder::preDexLibraryNoCache /android-sdk/extras/android/m2repository/com/android/support/support-annotations/21.0.3/support-annotations-21.0.3.jar
preDexLibrary : DxDexKey{dexKey=DxDexKey{buildTools=25.0.0, sourceFile=/android/studio-master-dev/out/repo/com/android/databinding/baseLibrary/2.3.0-dev/baseLibrary-2.3.0-dev.jar, mJumboMode=false, mOptimize=true}, mAdditionalParameters=[], mIsMultiDex=false}
StoredItem is null
Item from cache Item{mOutputFiles=[], mSourceFile=/android/studio-master-dev/out/repo/com/android/databinding/baseLibrary/2.3.0-dev/baseLibrary-2.3.0-dev.jar}
AndroidBuilder::preDexLibraryNoCache /android/studio-master-dev/out/repo/com/android/databinding/baseLibrary/2.3.0-dev/baseLibrary-2.3.0-dev.jar
AndroidBuilder::preDexLibraryNoCache /android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding/build/intermediates/exploded-aar/com.android.databinding/library/1.3.1/jars/classes.jar
AndroidBuilder::preDexLibrary /android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding/build/intermediates/exploded-aar/com.android.support/support-v4/21.0.3/jars/libs/internal_impl-21.0.3.jar
preDexLibrary : DxDexKey{dexKey=DxDexKey{buildTools=25.0.0, sourceFile=/android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding/build/intermediates/exploded-aar/com.android.support/support-v4/21.0.3/jars/libs/internal_impl-21.0.3.jar, mJumboMode=false, mOptimize=true}, mAdditionalParameters=[], mIsMultiDex=false}
StoredItem is null
Item from cache Item{mOutputFiles=[], mSourceFile=/android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding/build/intermediates/exploded-aar/com.android.support/support-v4/21.0.3/jars/libs/internal_impl-21.0.3.jar}
AndroidBuilder::preDexLibraryNoCache /android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding/build/intermediates/exploded-aar/com.android.support/support-v4/21.0.3/jars/libs/internal_impl-21.0.3.jar
Dexing in-process : /android-sdk/extras/android/m2repository/com/android/support/support-annotations/21.0.3/support-annotations-21.0.3.jar
Dexing in-process : /android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding/build/intermediates/exploded-aar/com.android.support/support-v4/21.0.3/jars/libs/internal_impl-21.0.3.jar
Dexing in-process : /android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding/build/intermediates/exploded-aar/com.android.databinding/library/1.3.1/jars/classes.jar
Dexing in-process : /android/studio-master-dev/out/repo/com/android/databinding/baseLibrary/2.3.0-dev/baseLibrary-2.3.0-dev.jar
AndroidBuilder::preDexLibrary /android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding/build/intermediates/exploded-aar/com.android.support/support-v4/21.0.3/jars/classes.jar
preDexLibrary : DxDexKey{dexKey=DxDexKey{buildTools=25.0.0, sourceFile=/android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding/build/intermediates/exploded-aar/com.android.support/support-v4/21.0.3/jars/classes.jar, mJumboMode=false, mOptimize=true}, mAdditionalParameters=[], mIsMultiDex=false}
StoredItem is null
Item from cache Item{mOutputFiles=[], mSourceFile=/android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding/build/intermediates/exploded-aar/com.android.support/support-v4/21.0.3/jars/classes.jar}
AndroidBuilder::preDexLibraryNoCache /android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding/build/intermediates/exploded-aar/com.android.support/support-v4/21.0.3/jars/classes.jar
Dexing in-process : /android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding/build/intermediates/exploded-aar/com.android.support/support-v4/21.0.3/jars/classes.jar
processing archive /android-sdk/extras/android/m2repository/com/android/support/support-annotations/21.0.3/support-annotations-21.0.3.jar...
processing META-INF/...
processing META-INF/MANIFEST.MF...
processing android/...
processing android/support/...
processing android/support/annotation/...
processing android/support/annotation/AnimRes.class...
processing android/support/annotation/XmlRes.class...
writing META-INF/; size 0...
writing android/; size 0...
writing android/support/; size 0...
writing android/support/annotation/; size 0...
Dexing /android-sdk/extras/android/m2repository/com/android/support/support-annotations/21.0.3/support-annotations-21.0.3.jar took 102.4 ms.
processing /android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding/build/intermediates/classes/debug/./android/databinding/DataBinderMapper.class...
processing /android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding/build/intermediates/classes/debug/./android/databinding/DataBinderMapper$InnerBrLookup.class...
Dexing /android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding/build/intermediates/classes/debug took 291.1 ms.
processing archive /android/studio-master-dev/out/repo/com/android/databinding/baseLibrary/2.3.0-dev/baseLibrary-2.3.0-dev.jar...
processing META-INF/...
processing META-INF/MANIFEST.MF...
processing android/...
processing android/databinding/...
processing android/databinding/Bindable.class...
processing android/databinding/ObservableMap$OnMapChangedCallback.class...
processing android/databinding/Untaggable.class...
writing META-INF/; size 0...
writing android/; size 0...
writing android/databinding/; size 0...
Dexing /android/studio-master-dev/out/repo/com/android/databinding/baseLibrary/2.3.0-dev/baseLibrary-2.3.0-dev.jar took 218.9 ms.
processing archive /android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding/build/intermediates/exploded-aar/com.android.databinding/library/1.3.1/jars/classes.jar...
processing android/databinding/BaseObservable.class...
processing android/databinding/DataBindingUtil.class...
processing android/databinding/ViewStubProxy.class...
processing android/databinding/ViewStubProxy$1.class...
processing com/android/databinding/library/BuildConfig.class...
Dexing /android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding/build/intermediates/exploded-aar/com.android.databinding/library/1.3.1/jars/classes.jar took 719.3 ms.
processing archive /android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding/build/intermediates/exploded-aar/com.android.support/support-v4/21.0.3/jars/libs/internal_impl-21.0.3.jar...
processing META-INF/...
processing META-INF/MANIFEST.MF...
processing android/...
processing android/support/v4/widget/SearchViewCompatIcs$MySearchView.class...
writing META-INF/; size 0...
writing android/; size 0...
writing android/support/; size 0...
writing android/support/v4/view/accessibility/; size 0...
writing android/support/v4/widget/; size 0...
Dexing /android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding/build/intermediates/exploded-aar/com.android.support/support-v4/21.0.3/jars/libs/internal_impl-21.0.3.jar took 1.114 s.
processing archive /android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding/build/intermediates/exploded-aar/com.android.support/support-v4/21.0.3/jars/classes.jar...
processing META-INF/...
processing META-INF/MANIFEST.MF...
processing android/...
processing android/support/v4/widget/CursorAdapter.class...
processing android/support/v4/widget/CursorAdapter$1.class...
processing android/support/v4/widget/ViewDragHelper$2.class...
processing android/support/v4/widget/ViewDragHelper$Callback.class...
writing META-INF/; size 0...
writing android/; size 0...
writing android/support/v4/widget/; size 0...
Dexing /android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding/build/intermediates/exploded-aar/com.android.support/support-v4/21.0.3/jars/classes.jar took 1.582 s.
Done with all dexing
Dexing in-process : /android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding/build/intermediates/pre-dexed/debug/com.android.support-support-v4-21.0.3_8c75de44d422aacc9c51f7e7311ce28bd79f8843.jar,/android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding/build/intermediates/pre-dexed/debug/com.android.databinding-library-1.3.1_63a52d60472c79415486a899a306e34c528e8107.jar,/android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding/build/intermediates/pre-dexed/debug/internal_impl-21.0.3_93fb52cefeb03f6a93a2cd5d98591e278be48e9e.jar,/android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding/build/intermediates/pre-dexed/debug/baseLibrary-2.3.0-dev_f1aa8a925c775e5ba0a8259a1397a09c60c289f6.jar,/android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding/build/intermediates/pre-dexed/debug/debug_dfe06dae96c56365712b283cf8cdf6ca7b527fce.jar,/android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding/build/intermediates/pre-dexed/debug/support-annotations-21.0.3_730fdd22d2bbc4f3acfa70e3afd89ab5ee83579f.jar
processing archive /android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding/build/intermediates/pre-dexed/debug/baseLibrary-2.3.0-dev_f1aa8a925c775e5ba0a8259a1397a09c60c289f6.jar...
ignored resource META-INF/
ignored resource android/
ignored resource android/databinding/
processing classes.dex...
processing archive /android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding/build/intermediates/pre-dexed/debug/com.android.databinding-library-1.3.1_63a52d60472c79415486a899a306e34c528e8107.jar...
processing classes.dex...
processing archive /android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding/build/intermediates/pre-dexed/debug/com.android.support-support-v4-21.0.3_8c75de44d422aacc9c51f7e7311ce28bd79f8843.jar...
ignored resource META-INF/
ignored resource android/
ignored resource android/support/
ignored resource android/support/v4/
ignored resource android/support/v4/view/accessibility/
ignored resource android/support/v4/widget/
processing classes.dex...
processing archive /android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding/build/intermediates/pre-dexed/debug/debug_dfe06dae96c56365712b283cf8cdf6ca7b527fce.jar...
processing classes.dex...
processing archive /android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding/build/intermediates/pre-dexed/debug/internal_impl-21.0.3_93fb52cefeb03f6a93a2cd5d98591e278be48e9e.jar...
ignored resource META-INF/
ignored resource android/
ignored resource android/support/v4/widget/
processing classes.dex...
processing archive /android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding/build/intermediates/pre-dexed/debug/support-annotations-21.0.3_730fdd22d2bbc4f3acfa70e3afd89ab5ee83579f.jar...
ignored resource META-INF/
ignored resource android/
ignored resource android/support/
ignored resource android/support/annotation/
processing classes.dex...
Dexing /android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding/build/intermediates/pre-dexed/debug/com.android.support-support-v4-21.0.3_8c75de44d422aacc9c51f7e7311ce28bd79f8843.jar,/android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding/build/intermediates/pre-dexed/debug/com.android.databinding-library-1.3.1_63a52d60472c79415486a899a306e34c528e8107.jar,/android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding/build/intermediates/pre-dexed/debug/internal_impl-21.0.3_93fb52cefeb03f6a93a2cd5d98591e278be48e9e.jar,/android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding/build/intermediates/pre-dexed/debug/baseLibrary-2.3.0-dev_f1aa8a925c775e5ba0a8259a1397a09c60c289f6.jar,/android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding/build/intermediates/pre-dexed/debug/debug_dfe06dae96c56365712b283cf8cdf6ca7b527fce.jar,/android/studio-master-dev/out/build/base/integration-test/build/tests/DataBindingAtomTest/checkDexContainsDataBindingClasses_withoutAdapters_true_/databinding/build/intermediates/pre-dexed/debug/support-annotations-21.0.3_730fdd22d2bbc4f3acfa70e3afd89ab5ee83579f.jar took 167.4 ms.
:transformClassesWithDexForDebugAtom (Thread[Daemon worker,5,main]) completed. Took 2.092 secs.
:compileDebugAtomNdk (Thread[Daemon worker,5,main]) started.
:compileDebugAtomNdk
Skipping task ':compileDebugAtomNdk' as it has no source files.
:compileDebugAtomNdk UP-TO-DATE
:compileDebugAtomNdk (Thread[Daemon worker,5,main]) completed. Took 0.001 secs.
:mergeDebugAtomJniLibFolders (Thread[Daemon worker,5,main]) started.
:mergeDebugAtomJniLibFolders
Executing task ':mergeDebugAtomJniLibFolders' (up-to-date check took 0.0 secs) due to:
  No history is available.
All input files are considered out-of-date for incremental task ':mergeDebugAtomJniLibFolders'.
Unable do incremental execution: full task run
:mergeDebugAtomJniLibFolders (Thread[Daemon worker,5,main]) completed. Took 0.005 secs.
:transformNativeLibsWithMergeJniLibsForDebugAtom (Thread[Daemon worker,5,main]) started.
:transformNativeLibsWithMergeJniLibsForDebugAtom
Executing task ':transformNativeLibsWithMergeJniLibsForDebugAtom' (up-to-date check took 0.001 secs) due to:
  No history is available.
All input files are considered out-of-date for incremental task ':transformNativeLibsWithMergeJniLibsForDebugAtom'.
:transformNativeLibsWithMergeJniLibsForDebugAtom (Thread[Daemon worker,5,main]) completed. Took 0.01 secs.
:transformNativeLibsWithStripDebugSymbolForDebugAtom (Thread[Daemon worker,5,main]) started.
:transformNativeLibsWithStripDebugSymbolForDebugAtom
Executing task ':transformNativeLibsWithStripDebugSymbolForDebugAtom' (up-to-date check took 0.002 secs) due to:
  No history is available.
All input files are considered out-of-date for incremental task ':transformNativeLibsWithStripDebugSymbolForDebugAtom'.
:transformNativeLibsWithStripDebugSymbolForDebugAtom (Thread[Daemon worker,5,main]) completed. Took 0.048 secs.
:processDebugAtomJavaRes (Thread[Daemon worker,5,main]) started.
:processDebugAtomJavaRes
Skipping task ':processDebugAtomJavaRes' as it has no source files.
:processDebugAtomJavaRes UP-TO-DATE
:processDebugAtomJavaRes (Thread[Daemon worker,5,main]) completed. Took 0.001 secs.
:transformResourcesWithMergeJavaResForDebugAtom (Thread[Daemon worker,5,main]) started.
:transformResourcesWithMergeJavaResForDebugAtom
Executing task ':transformResourcesWithMergeJavaResForDebugAtom' (up-to-date check took 0.001 secs) due to:
  No history is available.
All input files are considered out-of-date for incremental task ':transformResourcesWithMergeJavaResForDebugAtom'.
:transformResourcesWithMergeJavaResForDebugAtom (Thread[Daemon worker,5,main]) completed. Took 0.007 secs.
:bundleDebugAtom (Thread[Daemon worker,5,main]) started.
:bundleDebugAtom
Executing task ':bundleDebugAtom' (up-to-date check took 0.003 secs) due to:
  No history is available.
:bundleDebugAtom (Thread[Daemon worker,5,main]) completed. Took 0.105 secs.
:compileDebugAtomSources (Thread[Daemon worker,5,main]) started.
:compileDebugAtomSources
Skipping task ':compileDebugAtomSources' as it has no actions.
:compileDebugAtomSources (Thread[Daemon worker,5,main]) completed. Took 0.0 secs.
:assembleDebug (Thread[Daemon worker,5,main]) started.
:assembleDebug
Skipping task ':assembleDebug' as it has no actions.
:assembleDebug (Thread[Daemon worker,5,main]) completed. Took 0.001 secs.

BUILD SUCCESSFUL
