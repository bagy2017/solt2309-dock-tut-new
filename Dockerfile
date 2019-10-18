FROM debian
RUN mkdir /var/www
RUN mkdir /var/www/html
ADD test.html /var/www/html/
ADD pexels-photo-459225.jpeg /var/www/html/
RUN touch /etc/mime.types
RUN echo "text/html					html htm shtml" >> /etc/mime.types
RUN cat /etc/mime.types
RUN apt-get update
RUN apt-get install -y webfs
EXPOSE 80
CMD /usr/bin/webfsd -p 80 -d -r /var/www/html