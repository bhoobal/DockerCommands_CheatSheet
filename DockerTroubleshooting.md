
unable to prepare context: unable to evaluate symlinks in Dockerfile path: lstat /dockersamples/Dockerfile: no such file or directory

This is because of Dockerfile is not present in the directory or the file name "Dockerfile" is different

Docker build will work if you specify the dockerfile name

FIx: Make sure the file name is Dockerfile and exists in the directory


Docker - authentication error

Step 1/1 : FROM docker-all.artifactory.tools/spring-boot:11-jdk
Head "https://docker-all.artifactory.tools/spring-boot/manifests/11-jdk": unknown: Authentication is required

Fix: Docker logout/login - CLI and Docker deamon missing sync
