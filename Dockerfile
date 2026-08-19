FROM alpine:latest

WORKDIR /workspace

RUN apk add --no-cache python3 py3-pip \
	&& python3 -m pip install --break-system-packages --no-cache-dir wa-crypt-tools

ENTRYPOINT ["/usr/bin/wadecrypt"]

# run as unprivileged user
USER 1000:1000
