FROM alpine:3.9
LABEL maintainer="yura.ant@gmail.com" \ 
      name="diag-tools" \
      description="Image includes: curl, jq, telnet(busybox-extras), bind-tools" \
      version="0.0.1" 

RUN apk update 
RUN apk add --no-cache curl && \ 
    apk add --no-cache bash && \
    apk add --no-cache jq  && \
    apk add --no-cache busybox-extras && \
    apk add --no-cache bind-tools


ENTRYPOINT ["/bin/bash"]
