FROM alpine:3.12
LABEL maintainer="yura.ant@gmail.com" \ 
      name="diag-tools" \
      description="Image includes: curl, jq, telnet(busybox-extras), bind-tools, aws-cli" \
      version="0.1.1"

RUN apk update \
    && apk add --no-cache curl \
    && apk add --no-cache bash \
    && apk add --no-cache jq \
    && apk add --no-cache busybox-extras \
    && apk add --no-cache bind-tools \
    && rm -rf /var/cache/apk/*

RUN curl -sL https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip -o awscliv2.zip \
    && unzip awscliv2.zip \
    && aws/install \
    && rm -rf awscliv2.zip \

ENTRYPOINT ["/bin/bash"]
