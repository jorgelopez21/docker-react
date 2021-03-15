FROM node:alpine
WORKDIR '/app'
<<<<<<< HEAD
COPY package*.json ./
RUN npm install
COPY . .
=======
COPY package.json .
RUN npm install
COPY package*.json ./ 
>>>>>>> 3a6d0874e0be7337d164da87cd5c3769139459cb
RUN npm run build

FROM nginx
EXPOSE 80
<<<<<<< HEAD
COPY --from=0 /app/build /usr/share/nginx/html
=======
COPY --from=0 /app/build /usr/share/nginx/html
>>>>>>> 3a6d0874e0be7337d164da87cd5c3769139459cb
