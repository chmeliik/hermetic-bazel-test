FROM quay.io/konflux-ci/bazel6-ubi9:latest@sha256:7238094a01045a272a5ad0d7775426d8abc42541fb03b650a4cffead18c6a13c

# Prepare Bazel workspace
WORKDIR /workspace
COPY BUILD WORKSPACE .bazelrc /workspace/

RUN bazel build //:hello
