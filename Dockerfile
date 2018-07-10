FROM alpine:latest
MAINTAINER Colin O'Dell <colinodell@gmail.com>

# Install bash, install ssh client, and disable host key checking
RUN apk add --update --no-cache openssh-client bash curl && \
    mkdir -p ~/.ssh && \
    echo -e "Host *\n\tStrictHostKeyChecking no\n\n" > ~/.ssh/config

COPY notify-deployment /usr/local/bin/notify-deployment

CMD ["/bin/bash"]
