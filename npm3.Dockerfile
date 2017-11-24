FROM zephinzer/alpine-node:v6.11.5
WORKDIR /app
COPY ./package.json /app/package.json
RUN apk add --upgrade --update --no-cache python make g++
RUN npm install
ENTRYPOINT ["du", "-d1", "-k", "/app/node_modules"]
