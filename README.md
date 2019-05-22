# DockerWorkouts #
to try out docker
mkdir dotnet-docker
git clone https://github.com/dotnet/dotnet-docker.git

#Docker info
$ docker info

# Docker images #
$ docker images
$ docker rmi $(docker images)

# Docker passing build time arguments
ARG passarg="default value passed to argument" //in docker file
docker build #*--build-arg passarg='Arg value'*# -t alpine:1.0 .


# Volumes #

$ docker volume create selenium

$ docker volume ls

## Attaching volume to docker container ##
$ docker run -it -v seleinium:/dev/sel alpine:latest


cd dotnet-docker/
ls -l

docker rmi -f $(docker images -q)

docker build -f Dockerfile.debian-x64-selfcontained -t debian:latest .

docker build -f ./temp/Dockerfile.debian-x64-selfcontained -t debian:latest .

docker images

docker run -it 63ae68728eec --name aspnetcoresample -p 8000:80

docker build --pull -t aspnetapp -f Dockerfile.alpine-x64 .

docker run --name aspnetcore_sample --rm -it -p 8000:80 aspnetapp

docker images

docker ps --all

docker run --name aspnetcore_sample -it -p 8000:80 aspnetapp


Dockerfile
FROM ubuntu:latest
COPY
RUN

# download and unzip package
RUN wget -O somearchieve.tar.gz https://s3.amazonaws.com/adminportalcodebase/sdfsdfal/MMLAsdfsdfal.tar.gz

RUN tar -xzvf ./somearchieve.tar.gz

Detached docker 
docker run -d nginxsample:latest



execute command in shell
docker exec -i containerid sh

# kill all the containers -filtered by names #
docker rm $(docker ps --all --format "{{.Names}}")
