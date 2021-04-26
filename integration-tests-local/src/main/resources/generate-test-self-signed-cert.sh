#!/usr/bin/env bash

# generate your private key
openssl req -newkey rsa:2048 -nodes -keyout key.pem -x509 -days 3650 -out certificate.pem