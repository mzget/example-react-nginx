FROM nginx:latest
LABEL Name=example-react-nginx Version=0.1.0

COPY ./build /var/www/example
COPY default.conf /etc/nginx/conf.d

CMD   ["nginx", "-g", "daemon off;"]
