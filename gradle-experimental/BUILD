load("//tools/base/bazel:bazel.bzl", "fileset")
load("//tools/base/bazel:maven.bzl", "maven_java_library", "maven_pom")

fileset(
    name = "resources",
    srcs = ["//tools/buildSrc/base:version.properties"] + glob(["src/main/resources/**"]),
    mappings = {
        "//tools/buildSrc/base:": "com/android/build/gradle/model/",
        "src/main/resources/": "",
    },
)

maven_java_library(
    name = "gradle-experimental",
    srcs = glob(["src/main/java/**/*.java"]),
    pom = ":pom",
    resource_strip_prefix = "tools/base/build-system/gradle-experimental",
    resources = [":resources"],
    visibility = ["//visibility:public"],
    deps = [
        "//tools/analytics-library/protos/src/main/proto",
        "//tools/base/annotations",
        "//tools/base/build-system:gradle-api_neverlink",
        "//tools/base/build-system:tools.builder-test-api",
        "//tools/base/build-system/builder",
        "//tools/base/build-system/builder-model",
        "//tools/base/build-system/gradle-api",
        "//tools/base/build-system/gradle-core",
        "//tools/base/common:tools.common",
        "//tools/base/layoutlib-api:tools.layoutlib-api",
        "//tools/base/repository:tools.repository",
        "//tools/base/sdk-common:tools.sdk-common",
        "//tools/base/third_party:com.google.code.gson_gson",
        "//tools/base/third_party:com.google.guava_guava",
        "//tools/base/third_party:org.codehaus.groovy_groovy-all",
        "//tools/data-binding:tools.compilerCommon",
    ],
)

maven_pom(
    name = "pom",
    artifact = "gradle-experimental",
    group = "com.android.tools.build",
    source = "//tools/buildSrc/base:experimental_version",
)

java_test(
    name = "tests",
    srcs = glob(["src/test/java/**/*.java"]),
    jvm_flags = ["-Dtest.suite.jar=tests.jar"],
    resources = glob(["src/test/resources/**"]),
    test_class = "com.android.testutils.JarTestSuite",
    deps = [
        ":gradle-experimental",
        "//tools/base/annotations",
        "//tools/base/build-system:gradle-api",
        "//tools/base/testutils:tools.testutils",
        "//tools/base/third_party:com.google.truth_truth",
    ],
)
