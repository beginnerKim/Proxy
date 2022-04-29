FROM nginx:latest

LABEL maintainer="YTS NGINX Docker Maintainers <kimbeginner@ytstar.co.kr>"

ENV USER_CONFIG_DIR /etc/nginx/extra.config
ENV DEFAULT_DIR /etc/nginx

COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
CMD ["nginx", "-g", "daemon off;"]
