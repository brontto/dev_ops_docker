FROM ubuntu:20.04

WORKDIR /usr/src/app/

RUN apt-get update
RUN apt-get install -y curl

COPY get_web.sh .
RUN chmod +x get_web.sh

CMD ./get_web.sh