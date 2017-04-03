FROM alpine:latest
MAINTAINER Colin O'Dell <colinodell@gmail.com>

RUN apk add --update --no-cache openssh-client bash

CMD ["/bin/bash"]
