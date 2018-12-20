# Use an official Python runtime as a parent image
FROM debian

# Set the working directory to /app
WORKDIR /app

COPY samp037svr_R2-1.tar.gz /app

#update
RUN apt-get update

#install wget
#RUN apt-get -y install wget

#32bit support
RUN dpkg --add-architecture i386
RUN apt-get update
RUN apt-get -y install libstdc++6:i386
RUN apt-get -y install libgcc1:i386
RUN apt-get -y install zlib1g:i386 
RUN apt-get -y install  libncurses5:i386
RUN  apt-get -y install lib32stdc++6
RUN  apt-get update

#Download SAMP server
#RUN wget http://files.sa-mp.com/samp037svr_R2-1.tar.gz

#extract files from zip
RUN tar zxf samp037svr_R2-1.tar.gz

# Make port 7777 available to the world outside this container
EXPOSE 7777


#
#RUN cd samp03 && ./samp03svr
#cd /app/samp03/ && ls

#RUN ls samp03


WORKDIR /app/samp03
CMD  ["./samp03svr"]

#
#RUN cat /samp03/server_log.txt
#RUN ls

