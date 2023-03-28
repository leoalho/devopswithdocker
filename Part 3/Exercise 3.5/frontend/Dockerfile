FROM node:16

RUN useradd -m appuser
RUN chown appuser .

USER appuser

WORKDIR /usr/src/app

COPY . .

RUN npm i
RUN npm run build
RUN npm install -g serve

CMD ["serve", "-s", "-l", "5000", "build"]