FROM docker:18

RUN apk --update add git subversion less vim openssh curl jq bash && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/*

RUN wget https://github.com/mikefarah/yq/releases/download/3.4.1/yq_linux_amd64
RUN mv yq_linux_amd64 yq && chmod +x ./yq
RUN mv ./yq /bin/

VOLUME /git
WORKDIR /git

