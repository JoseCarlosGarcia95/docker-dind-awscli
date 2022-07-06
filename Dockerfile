ARG DOCKER_VERSION="20.10.17-alpine3.16"

FROM docker:${DOCKER_VERSION}

RUN apk add --no-cache \
    python3 \
    py3-pip \
    && pip3 install --upgrade pip \
    && pip3 install --no-cache-dir \
    awscli \
    && rm -rf /var/cache/apk/*