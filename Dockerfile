FROM node:lts-bullseye

RUN apt-get update && apt-get upgrade -y

COPY . .

RUN yarn global add pkg
RUN yarn install

ENTRYPOINT pkg ./src/index.js --output assets/gssg --targets node16-macos-x64