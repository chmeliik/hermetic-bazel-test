FROM quay.io/konflux-ci/bazel6-ubi9:latest@sha256:1e2c8f194f1ebb9bd44354f90ae80f9a7846573c21636b7fb1d67c8118be19c5

# Prepare Bazel workspace
WORKDIR /workspace
COPY BUILD WORKSPACE .bazelrc /workspace/

RUN bazel build //:hello
