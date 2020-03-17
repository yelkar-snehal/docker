# parent node alpine 3.10
FROM node:13.7.0-alpine3.10 as react-sample-build

WORKDIR /app

COPY ./react-sample /app

# compile using npm
RUN npm install

# build
RUN npm run build

# second layer

FROM nginx:latest

WORKDIR /app/build

# copy build dir's content from layer one to this layer
COPY --from=react-sample-build /app/build /usr/share/nginx/html

EXPOSE 80
