#!/bin/bash

cd `dirname $0`

# Change values for --prefix and --add-module here as per paths in your system.

./configure \
                --prefix=/home/gurudath/RubymineProjects/unicorn-and-nginx/nginc_repository --add-module=/home/gurudath/RubymineProjects/unicorn-and-nginx/nginc_repository/ngx_cache_purge-1.6/ --with-http_image_filter_module    --add-module=/home/gurudath/RubymineProjects/unicorn-and-nginx/nginc_repository/ngx_http_geoip2_module/ --with-http_spdy_module  --with-ipv6 --with-http_geoip_module 
#                --add-module=/home/ubmkreatio/nginx_upload/nginx_soft/echo-nginx-module-0.51/ \
                "$@"

