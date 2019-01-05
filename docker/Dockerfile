# Use an official Python runtime as a parent image
FROM i386/debian

#update
RUN apt-get update
#INSTALL JAVA RUNTIME
RUN apt-get install -y default-jre
#update
RUN apt-get update
#32bit support
#RUN dpkg --add-architecture i386
#RUN apt-get update
#RUN apt-get -y install libstdc++6:i386
#RUN apt-get -y install libgcc1:i386
#RUN apt-get -y install zlib1g:i386 
#RUN apt-get -y install  libncurses5:i386
#RUN  apt-get -y install lib32stdc++6
#RUN  apt-get update
#RUN apt-get -y install default-jre:i386
#RUN  apt-get update
#RUN apt-get install -y default-jdk
#RUN  apt-get update

#CMD ["export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/"]
#LD_LIBRARY_PATH
#CMD ["export PATH=${PATH}:/usr/lib/jvm/java-8-openjdk-amd64/bin"]

# Set the working directory to /app
WORKDIR /app

#Adding SAMP dir from the host
#!!! FIX: Change to the artifact download. See the commented text below !!! FIX 
#ADD SAMP /app/samp03
RUN mkdir samp03
#COPY samp037svr_R2-1.tar.gz /app
#!!! FIX: Change to the artifact download. See the commented text below !!! FIX 

#Download SAMP server COMMENTED FOR INITIAL SETUP - SHOULD REPLACE PREVIOUS THREE LINES
#install wget
#RUN apt-get -y install wget
#RUN wget http://files.sa-mp.com/samp037svr_R2-1.tar.gz
#extract files from zip
#RUN tar zxf samp037svr_R2-1.tar.gz
#Download SAMP server COMMENTED FOR INITIAL SETUP - SHOULD REPLACE PREVIOUS THREE LINES

# Make port 7777 available to the world outside this container
EXPOSE 7777

#Running SAMP server
WORKDIR /app/samp03
CMD  ["./startup.sh"]
#CMD  ["./samp03svr"]
