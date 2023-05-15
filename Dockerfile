FROM node:16.20.0-alpine3.17 as build
WORKDIR /app
COPY package*.json ./
RUN npm install --production
COPY . .
RUN npm run build
FROM nginx:stable-alpine
COPY --from=build /app/build /bin/www
COPY nginx/default.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
CMD [ "nginx", "-g", "daemon off;" ]