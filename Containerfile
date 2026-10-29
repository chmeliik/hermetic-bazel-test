FROM quay.io/konflux-ci/bazel6-ubi9:latest@sha256:44e2e72dd5f7c59b92b00604e690a948e772aedbfafee80c417c9b70c64169c8

# Prepare Bazel workspace
WORKDIR /workspace
COPY BUILD WORKSPACE .bazelrc /workspace/

RUN bazel build //:hello
