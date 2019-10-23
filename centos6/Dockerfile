FROM centos:6
MAINTAINER pmvera
#update apt lists, packages and upgrade the system & install ssh
RUN yum update -y; yum clean all
RUN yum install openssh-server passwd -y; yum clean all
RUN ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key -N ''
RUN mkdir /var/run/sshd; chmod 0755 /var/run/sshd
#create a new user called docker
RUN useradd docker; echo "docker:docker" | chpasswd
# Bind the docker to the ssh conection
CMD ["/usr/sbin/sshd", "-D"]
