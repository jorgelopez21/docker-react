<<<<<<< HEAD
FROM node:alpine
WORKDIR '/app'
COPY package.json .
=======
<<<<<<< HEAD
FROM node:alpine
WORKDIR '/app'
COPY package*.json ./
=======
<<<<<<< HEAD
FROM node:alpine
=======
FROM node:alpine as builder
>>>>>>> 99f9a34963a482844d8aa664669fd3ba0c84e509
WORKDIR '/app'
COPY package.json .
>>>>>>> e517634cff9db946dcb710f3b3a8ff3bf27ad816
>>>>>>> 9039bfd91818605f85a12462ed3dc28cbdbac6c4
RUN npm install
COPY . .
RUN npm run build

FROM nginx
<<<<<<< HEAD
COPY --from=0 /app/build /usr/share/nginx/html
=======
<<<<<<< HEAD
EXPOSE 80
COPY --from=0 /app/build /usr/share/nginx/html
=======
<<<<<<< HEAD
COPY --from=0 /app/build /usr/share/nginx/html
=======
COPY --from=builder /app/build /usr/share/nginx/html
>>>>>>> 99f9a34963a482844d8aa664669fd3ba0c84e509
>>>>>>> e517634cff9db946dcb710f3b3a8ff3bf27ad816
>>>>>>> 9039bfd91818605f85a12462ed3dc28cbdbac6c4
