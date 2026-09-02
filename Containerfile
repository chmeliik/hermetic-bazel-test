FROM quay.io/konflux-ci/bazel6-ubi9:latest@sha256:09be1fbdb7825dc64d199fa30a9063a4fccf9f34bcebe55752f828446cf65f46

# Prepare Bazel workspace
WORKDIR /workspace
COPY BUILD WORKSPACE .bazelrc /workspace/

RUN bazel build //:hello
