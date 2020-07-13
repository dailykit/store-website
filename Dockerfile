FROM nginx:1.15.2-alpine

WORKDIR /usr/src/app
COPY . .

COPY . /usr/share/nginx/html
WORKDIR /usr/share/nginx/html
RUN rm /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/conf.d

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]