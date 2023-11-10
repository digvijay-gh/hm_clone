FROM mcr.microsoft.com/vscode/devcontainers/base:buster

# Install Flutter dependencies
RUN apt-get update \
    && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends \
        clang \
        cmake \
        ninja-build \
        pkg-config \
        libgtk-3-dev \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
