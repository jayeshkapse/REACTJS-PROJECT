FROM node:16 AS build
WORKDIR /app
COPY package*.json ./
COPY . /app
RUN npm install
RUN npm run build
EXPOSE 3000
FROM nginx:latest
COPY --from=build /app/build /usr/share/nginx/html/
