FROM mentatxx/export-variables as exporter

FROM nginx
COPY --from=exporter /export-variables /bin/export-variables
COPY nginx/default.conf /etc/nginx/conf.d/default.conf
COPY nginx/start.sh /bin/start.sh
RUN chmod 777 /bin/start.sh
CMD ["/bin/sh", "-c", "/bin/start.sh"]
