FROM golang:alpine AS builder
WORKDIR /usr/src/app
COPY . .
RUN go build

FROM scratch
COPY --from=builder usr/src/app/server .
ENV REQUEST_ORIGIN=http://localhost:5000
CMD ["./server"]