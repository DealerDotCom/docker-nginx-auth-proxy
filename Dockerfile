FROM nginx:1.13

ADD proxy.conf.tpl /etc/nginx/conf.d/default.conf.tpl
ADD start.sh /start

CMD /start