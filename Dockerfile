FROM python:3.7

MAINTAINER Adam Clarke <support@strategicdata.com.au>

RUN apt-get update && apt-get install -y \
  miller \
  && rm -rf /var/lib/apt/lists/*

RUN pip install --upgrade pip setuptools csvkit

RUN useradd -ms /bin/bash csvkit
USER csvkit

WORKDIR /mnt
