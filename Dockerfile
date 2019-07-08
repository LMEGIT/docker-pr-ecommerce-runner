FROM composer:1.8

RUN apk update \
  && apk add git rsync bash python3 \
  && apk add --no-cache python3 \
  && if [ ! -e /usr/bin/python ]; then ln -sf python3 /usr/bin/python ; fi \
  && python3 -m ensurepip \
  && rm -r /usr/lib/python*/ensurepip \
  && pip3 install --no-cache --upgrade pip setuptools wheel \
  && if [ ! -e /usr/bin/pip ]; then ln -s pip3 /usr/bin/pip ; fi \
  && pip install boto3

ENTRYPOINT [/bin/sh]
