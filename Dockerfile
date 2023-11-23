
FROM node:16-alpine AS build
WORKDIR /app
COPY package*.json ./
COPY . /app
RUN npm install
RUN npm run build
EXPOSE 3000
FROM nginx:alpine
COPY --from=build /app/build /usr/share/nginx/html/
CMD ["nginx", "-g", "daemon off;"]
