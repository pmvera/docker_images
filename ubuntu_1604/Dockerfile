FROM ubuntu:16.04
MAINTAINER pmvera
#update apt lists, packages and upgrade the system & install ssh
RUN apt-get update && apt-get install openssh-server -y
#create a new user called docker
RUN useradd docker && echo "docker:docker" | chpasswd
# Bind the docker to the ssh conection
CMD ["/usr/sbin/sshd", "-D"]
RUN mkdir /var/run/sshd && chmod 0755 /var/run/sshd
