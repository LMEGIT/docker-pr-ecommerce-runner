FROM composer:latest

RUN apk update \
  && apk add git rsync bash python3 \
  && apk add --no-cache python3 \
  && python3 -m ensurepip \
  && rm -r /usr/lib/python*/ensurepip \
  && pip3 install --no-cache --upgrade pip setuptools wheel \
  && pip3 install boto3

ENTRYPOINT ["/bin/sh"]
