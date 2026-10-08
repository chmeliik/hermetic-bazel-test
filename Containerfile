FROM quay.io/konflux-ci/bazel6-ubi9:latest@sha256:acd3df0b1be2ac25cf597499c4b714f723468462a32779ee81bfc401d3eb9b41

# Prepare Bazel workspace
WORKDIR /workspace
COPY BUILD WORKSPACE .bazelrc /workspace/

RUN bazel build //:hello
