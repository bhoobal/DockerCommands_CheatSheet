# DockerWorkouts
to try out docker
mkdir dotnet-docker
git clone https://github.com/dotnet/dotnet-docker.git

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
