FROM mhart/alpine-node:latest AS builder

WORKDIR /usr/src/app

COPY . .

RUN npm i && npm run build

FROM mhart/alpine-node:latest

WORKDIR /usr/src/app

COPY --from=builder /usr/src/app/build/ /usr/src/app/build/

RUN npm install -g serve

ENV REACT_APP_BACKEND_URL=http://localhost:8080

CMD ["serve", "-s", "-l", "5000", "build"]