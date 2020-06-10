#!/bin/sh
export-variables -type script -file /usr/share/nginx/html/environment.js
nginx -g "daemon off;"
