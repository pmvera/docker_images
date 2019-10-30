#!/bin/sh

docker build -t centos_6s -f centos6/Dockerfile .
docker network create -d bridge --subnet 172.25.10.0/24 centos6_net
docker run -d --name=centos6_1 --network=centos6_net --ip=172.25.10.2 --rm centos_6s
docker run -d --name=centos6_2 --network=centos6_net --ip=172.25.10.3 --rm centos_6s

docker build -t centos_7s -f centos7/Dockerfile .
docker network create -d bridge --subnet 172.25.20.0/24 centos7_net
docker run -d --name=centos7_1 --network=centos7_net --ip=172.25.20.2 --rm centos_7s
docker run -d --name=centos7_2 --network=centos7_net --ip=172.25.20.3 --rm centos_7s

docker build -t ubuntu_1604s -f ubuntu_1604/Dockerfile .
docker network create -d bridge --subnet 172.25.30.0/24 ubuntu16_net
docker run -d --name=ubuntu16_1 --network=ubuntu16_net --ip=172.25.30.2 --rm ubuntu_1604s
docker run -d --name=ubuntu16_2 --network=ubuntu16_net --ip=172.25.30.3 --rm ubuntu_1604s

docker build -t ubuntu_1404s -f ubuntu_1404/Dockerfile .
docker network create -d bridge --subnet 172.25.40.0/24 ubuntu14_net
docker run -d --name=ubuntu14_1 --network=ubuntu14_net --ip=172.25.40.2 --rm ubuntu_1404s
docker run -d --name=ubuntu14_2 --network=ubuntu14_net --ip=172.25.40.3 --rm ubuntu_1404s
