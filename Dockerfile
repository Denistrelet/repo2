FROM ubuntu:18.04
RUN apt update
RUN apt install nginx -y 
RUN apt install software-properties-common -y
RUN add-apt-repository ppa:deadsnakes/ppa
RUN apt install python3.8 -y
RUN ln -s /usr/bin/pip3 /usr/bin/pip
RUN ln -s /usr/bin/python3.8 /usr/bin/python
WORKDIR /var/www/html/
COPY . . 
CMD ["nginx","-g","daemon off;"]