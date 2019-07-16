FROM alpine:3.7

RUN apk add --no-cache python3
RUN apk add --no-cache --virtual build-dependencies python3-dev gcc musl-dev zlib-dev libffi-dev git openssh openssl-dev \
