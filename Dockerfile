FROM ubuntu:22.04


ADD requirements.txt .

RUN apt-get update && \
    apt-get install -y \
    python3-pip \
    libmpich-dev \
    git

RUN python3 -m pip install -U pip

RUN python3 -m pip install -r requirements.txt