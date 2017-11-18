FROM alpine:3.6

RUN apk add --update \
    arpack-dev \
    curl \
    curl-dev \
    fftw-dev \
    g++ \
    git \
    gmp-dev \
    lapack-dev \
    libunwind-dev \
    libuv-dev \
    llvm-dev \
    make \
    mbedtls-dev \
    mpfr-dev \
    openblas-dev \
    openspecfun-dev \
    openssl \
    pcre2-dev \
    suitesparse-dev \
    tar \
    utf8proc-dev \
    ; true
    
COPY julia /root/julia
COPY Make.user /root/julia/

WORKDIR /root/julia