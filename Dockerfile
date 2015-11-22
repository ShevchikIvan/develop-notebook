FROM sctlee/nginx-mkdocs
ADD . /usr/share/nginx/html/portal
RUN cd /usr/share/nginx/html/portal/ && \
  mkdocs build
RUN rm -f /etc/nginx/conf.d/*
ADD nginx/conf.d /etc/nginx/conf.d/
