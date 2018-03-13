# FROM ubuntu:16.04
FROM python:2-stretch

RUN apt-get update -y && \
      DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
      git \
      curl \
      && \
      apt-get clean

WORKDIR /ansible

COPY requirements.txt .

RUN pip install -r requirements.txt
# RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys F23C5A6CF475977595C89F51BA6932366A755776
#
# RUN apt-get update -y && \
#     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
#     ca-certificates \
#     curl \
#     gcc \
#     git \
#     libbz2-dev \
#     libffi-dev \
#     libreadline-dev \
#     libsqlite3-dev \
#     libxml2-dev \
#     libxslt1-dev \
#     locales \
#     make \
#     openssh-client \
#     openssl \
#     shellcheck \
#     && \
#     apt-get clean

ENV container=docker
# CMD ["/sbin/init"]
CMD ["$@"]
