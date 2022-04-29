FROM nginx:latest

LABEL maintainer="YTS NGINX Docker Maintainers <kimbeginner@ytstar.co.kr>"

ENV USER_CONFIG_DIR /etc/nginx/extra.config


COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
CMD ["nginx", "-g", "daemon off;"]
