FROM quay.io/konflux-ci/bazel6-ubi9:latest@sha256:efa76f1b3053c1b047a55b463c5cd724a9bc8b88cfe6825caf1e2b85e35d2adc

# Prepare Bazel workspace
WORKDIR /workspace
COPY BUILD WORKSPACE .bazelrc /workspace/

RUN bazel build //:hello
