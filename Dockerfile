FROM node:16-alpine as build
WORKDIR /app
COPY package.json yarn.lock .
RUN yarn install
COPY . .
RUN yarn build

FROM nginx:latest
COPY --from=build /app/dist /usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
