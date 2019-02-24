FROM node:alpine
LABEL name="OrgDependencies App"
LABEL description="Docker Template for OrgDependencies App"
LABEL maintainer="Ahmad Nassri <email@ahmadnassri.com>"

WORKDIR /app

RUN apk --no-cache --virtual build-dependencies add python make g++
RUN npm install --global @dependencies/app
RUN apk del build-dependencies

ENTRYPOINT [ "dependencies" ]