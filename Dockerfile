<<<<<<< HEAD
FROM node:alpine
=======
FROM node:alpine as builder
>>>>>>> 99f9a34963a482844d8aa664669fd3ba0c84e509
WORKDIR '/app'
COPY package.json .
RUN npm install
COPY . .
RUN npm run build

FROM nginx
<<<<<<< HEAD
COPY --from=0 /app/build /usr/share/nginx/html
=======
COPY --from=builder /app/build /usr/share/nginx/html
>>>>>>> 99f9a34963a482844d8aa664669fd3ba0c84e509
