FROM centos:7

#from http://cod4-linux-server.webs.com/
RUN yum update -y
RUN yum -y install glibc.i686 libgcc.i686 libstdc++.i686 zlib.i686

RUN useradd cod4
ADD cod4 /home/cod4/
RUN chown -R cod4:cod4 /home/cod4

USER cod4
WORKDIR /home/cod4
ENTRYPOINT /home/cod4/start.sh
