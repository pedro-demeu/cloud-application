FROM node:20-alpine AS build

WORKDIR /app

COPY app/package.json app/yarn.lock ./

RUN yarn install

COPY app/ ./

RUN yarn build

FROM nginx:alpine

COPY --from=build /app/build /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]