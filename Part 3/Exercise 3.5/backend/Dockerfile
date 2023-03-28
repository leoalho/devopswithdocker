FROM golang:latest

RUN adduser appuser

USER appuser

WORKDIR /usr/src/app

COPY . .

RUN go build

CMD ["./server"]