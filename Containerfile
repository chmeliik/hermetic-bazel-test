FROM quay.io/konflux-ci/bazel6-ubi9:latest@sha256:3d5bc5093e9a69d1f3ddde2f56fbceb71536451013f647f9dcab50eb46582f56

# Prepare Bazel workspace
WORKDIR /workspace
COPY BUILD WORKSPACE .bazelrc /workspace/

RUN bazel build //:hello
