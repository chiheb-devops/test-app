

FROM docker.io/nginx:alpine


COPY ./html /usr/share/nginx/html


EXPOSE 8010

CMD ["nginx", "-g", "daemon off;"]
