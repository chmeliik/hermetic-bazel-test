FROM quay.io/konflux-ci/bazel6-ubi9:latest@sha256:d736670ba8d92c3c5d5b9ebc18e78295d5dcde2419d42e3d8fc859ba02c91e9c

# Prepare Bazel workspace
WORKDIR /workspace
COPY BUILD WORKSPACE .bazelrc /workspace/

RUN bazel build //:hello
