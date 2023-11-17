FROM ubuntu:22.04

#from http://cod4-linux-server.webs.com/


RUN dpkg --add-architecture i386
RUN apt-get update && apt-get upgrade -y
RUN apt-get install gcc-multilib  -y

RUN useradd cod4
ADD cod4 /home/cod4/
RUN chown -R cod4:cod4 /home/cod4

USER cod4
WORKDIR /home/cod4
CMD [ "/home/cod4/start.sh" ]
