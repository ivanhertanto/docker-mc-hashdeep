FROM ubuntu:20.04

LABEL maintainer="ivanhertanto.github.io"

# ENV MC_UID 1000
# ENV MC_GID 1000
ENV TZ=Asia/Jakarta
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# Update Ubuntu Software repository
RUN apt update

RUN apt install -y mc hashdeep && \
     rm -rf /var/lib/apt/lists/* && \
     apt clean

CMD /usr/bin/mc
# ENTRYPOINT ["/usr/bin/mc"]