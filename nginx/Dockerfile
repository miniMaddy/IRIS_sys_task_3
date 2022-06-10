FROM ubuntu:18.04
# install nginx
RUN apt-get update -y
RUN apt-get install -y software-properties-common
RUN add-apt-repository -y ppa:nginx/stable
RUN apt-get update -y
RUN apt-get install -y nginx

# deamon mode off
RUN echo "\ndaemon off;" >> /etc/nginx/nginx.conf
RUN chown -R www-data:www-data /var/lib/nginx

# expose ports
EXPOSE 80 443

# add nginx conf to the conf.d
ADD config/test.conf /etc/nginx/conf.d/test.conf

# add nginx conf
ADD config/test.conf /etc/nginx/sites-available/test

# create symlinks
RUN ln -s /etc/nginx/sites-available/test /etc/nginx/sites-enabled/

WORKDIR /etc/nginx

CMD ["nginx"]