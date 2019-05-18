FROM alpine:latest
ARG passarg="default value passed to argument"
RUN mkdir app
RUN apk add git
RUN git clone https://github.com/bhoobal/DockerCommands_CheatSheet.git
COPY . /app
COPY ./Readme.txt /app
#ENV varenv="This is a environment variable value"
ENV varEnv=${passarg}
WORKDIR /app
# there can be only one entry point
#CMD echo "Hello world $varenv"
ENTRYPOINT [ "/bin/sh" ]


#ENTRYPOINT echo "Hello world variable passed from Arg $passarg"
 
