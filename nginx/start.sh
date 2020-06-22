#!/bin/sh
export-variables -type script -file /usr/share/nginx/html/_environment.html
nginx -g "daemon off;"
