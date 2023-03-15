FROM golang:latest

WORKDIR /usr/src/app

COPY . .

ENV REQUEST_ORIGIN=http://localhost:5000
RUN go build

CMD ["./server"]