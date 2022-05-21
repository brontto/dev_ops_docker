from ubuntu:latest

WORKDIR /usr/src/app

COPY app.sh .
COPY my_token.txt .

RUN apt-get update && apt-get install -y git curl apt-utils sed
RUN curl -fsSL https://get.docker.com -o get-docker.sh && sh get-docker.sh
RUN curl https://registry-1.docker.io/v2/ && echo Works

RUN chmod +x app.sh

CMD ["./app.sh"]
