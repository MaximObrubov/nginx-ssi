FROM nginx:latest
COPY app /var/www/
# COPY run.sh /usr/share/nginx/run.sh
COPY conf/locations.conf /local/locations.conf
COPY conf/nginx.conf /etc/nginx/nginx.conf
COPY conf/conf.d /etc/nginx/conf.d
# RUN ./usr/share/nginx/run.sh

RUN echo '================================'
RUN cat /etc/nginx/nginx.conf
RUN echo '================================'

RUN nginx -c /etc/nginx/nginx.conf