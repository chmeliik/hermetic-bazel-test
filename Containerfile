FROM quay.io/konflux-ci/bazel6-ubi9:latest@sha256:41fb03ce654a3978ca57584ad26c23c97a1179e364cfa3468bc8c5527d8df0d4

# Prepare Bazel workspace
WORKDIR /workspace
COPY BUILD WORKSPACE .bazelrc /workspace/

RUN bazel build //:hello
