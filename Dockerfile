FROM python:2-stretch

RUN apt-get update -y && \
      DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
      git \
      curl \
      vim \
      htop \
      nload \
      tmux \
      && \
      apt-get clean

WORKDIR /ansible

COPY requirements.txt .

RUN pip install -r requirements.txt

ENV container=docker
# CMD ["/sbin/init"]
CMD ["/bin/bash"]
