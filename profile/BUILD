load("//tools/base/bazel:bazel.bzl", "fileset")

fileset(
    name = "sources",
    srcs = glob(["src/main/java/**/*.java"]),
    visibility = ["//tools/base/build-system/builder:__pkg__"],
)

java_library(
    name = "profile",
    srcs = glob(["src/main/java/**"]),
    visibility = ["//visibility:public"],
    deps = [
        "//tools/analytics-library/protos:analytics-protos",
        "//tools/analytics-library/shared:tools.analytics-shared",
        "//tools/analytics-library/tracker:tools.analytics-tracker",
        "//tools/base/annotations",
        "//tools/base/common:tools.common",
        "//tools/base/third_party:com.google.code.gson_gson",
        "//tools/base/third_party:com.google.guava_guava",
    ],
)

java_test(
    name = "tests",
    srcs = glob(["src/test/java/**"]),
    jvm_flags = ["-Dtest.suite.jar=tests.jar"],
    test_class = "com.android.testutils.JarTestSuite",
    runtime_deps = ["//tools/base/testutils:tools.testutils"],
    deps = [
        ":profile",
        "//tools/analytics-library/protos:analytics-protos",
        "//tools/base/annotations",
        "//tools/base/third_party:com.google.jimfs_jimfs",
        "//tools/base/third_party:com.google.truth_truth",
        "//tools/base/third_party:junit_junit",
        "//tools/base/third_party:org.mockito_mockito-all",
    ],
)
