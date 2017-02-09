FROM python:2.7-alpine

MAINTAINER Adam Clarke <support@strategicdata.com.au>

RUN pip install --upgrade pip setuptools csvkit

RUN adduser -S csvkit
USER csvkit