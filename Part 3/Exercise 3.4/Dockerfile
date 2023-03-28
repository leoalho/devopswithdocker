FROM alpine:latest

COPY . .

RUN apk add git
RUN apk add docker

ENTRYPOINT ["./my-script.sh"]