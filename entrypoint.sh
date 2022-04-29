#!/bin/sh
# vim:sw=4:ts=4:et
set -e


NGINX_DIR=/etc/nginx
if [ -d ${USER_CONFIG_DIR} ]; then

    for f in ${USER_CONFIG_DIR}/*.conf
    do
        config=$(basename $f)
        echo "check ${config} file..."
        if [ -f ${NGINX_DIR}/${config} ]; then
            echo "    >>>> remove default ${config} config file"
            rm ${NGINX_DIR}/${config}
        fi

        echo "    >>>> copy ${config} config file to ${NGINX_DIR}"
        install -g root -o root ${USER_CONFIG_DIR}/${config} ${NGINX_DIR}
    done
fi


/docker-entrypoint.sh "$@"
