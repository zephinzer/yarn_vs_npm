FROM zephinzer/alpine-node:v8.9.1
WORKDIR /app
COPY ./package.json /app/package.json
RUN apk add --upgrade --update --no-cache python make g++
RUN npm install
ENTRYPOINT ["du", "-d1", "-k", "/app/node_modules"]
