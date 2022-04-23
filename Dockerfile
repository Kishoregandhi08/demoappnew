# FROM node:14.19-alpine3.14 as builder
# WORKDIR /demoapp
# COPY /dist/my-app .

FROM nginx:1.15.8-alpine

## Remove default nginx website
# RUN rm -rf /usr/share/nginx/html/*
COPY nginx.conf /etc/nginx/conf.d/default.conf
## From 'builder' stage copy over the artifacts in dist folder to default nginx public folder
COPY dist/my-app /usr/share/nginx/html

# CMD ["nginx", "-g", "daemon off;"]
