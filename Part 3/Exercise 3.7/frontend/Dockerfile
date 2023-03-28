FROM mhart/alpine-node:latest

WORKDIR /usr/src/app

COPY . .

ENV REACT_APP_BACKEND_URL=http://localhost:8080
RUN npm i && npm run build && npm install -g serve

CMD ["serve", "-s", "-l", "5000", "build"]