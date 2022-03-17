FROM adoptopenjdk/openjdk8:latest

ENV TZ=Europe/Minsk
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezon
ENV DEBIAN_FRONTEND noninteractive 
ENV TERM xterm

RUN apt update -y   
USER root 

#Install OpenJDK packages and some tools
RUN apt install -y git maven tmux python3 nano 

#Expose LDAP port
EXPOSE 1389 