FROM quay.io/konflux-ci/bazel6-ubi9:latest@sha256:818bd69f1a77ae719d20fe52bf75681d54df8b774b619ce7447eb327ce73eb69

# Prepare Bazel workspace
WORKDIR /workspace
COPY BUILD WORKSPACE .bazelrc /workspace/

RUN bazel build //:hello
