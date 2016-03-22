FROM ubuntu:15.10

RUN apt-get update && \
        apt-get install -y \
        git \
        cmake \
        ninja-build \
        clang \
        python \
        uuid-dev \
        libicu-dev \
        icu-devtools \
        libbsd-dev \
        libedit-dev \
        libxml2-dev \
        libsqlite3-dev \
        swig \
        libpython-dev \
        libncurses5-dev \
        pkg-config && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

// copy swift source to container

// build foundation && run tests
RUN cd SRC_ROOT/swift-corelibs-foundation
    ninja test