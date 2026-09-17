FROM quay.io/konflux-ci/bazel6-ubi9:latest@sha256:711554ca72046550f25f49cd7707363c8dbe450ef08cc4473fafe0ccc50dacfe

# Prepare Bazel workspace
WORKDIR /workspace
COPY BUILD WORKSPACE .bazelrc /workspace/

RUN bazel build //:hello
