# Rsyslog Docker Image

A dockerized image to run a rsyslog server based on the Alpine image

## Usage

`docker run -d --name rsyslog -v "$PWD/logs:/var/log" safesecurity/rsyslog:latest`