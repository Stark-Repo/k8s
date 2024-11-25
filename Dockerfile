FROM docker.io/ubuntu
MAINTAINER AZURE ENGINEER 
RUN apt-get update && apt install apache2 -y
RUN echo "welcome to our dockerfile">/home/ubuntu/index.html
EXPOSE 80
CMD apachectl -D FOREGROUND
