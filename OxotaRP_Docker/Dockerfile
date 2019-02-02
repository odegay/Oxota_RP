FROM oxotarpcore
# Set the working directory to /app
WORKDIR /app

#Adding SAMP dir from the host
#!!! FIX: Change to the artifact download. See the commented text below !!! FIX 
#ADD SAMP /app/samp03
#RUN mkdir samp03
RUN wget https://raw.github.com/odegay/OxotaRP_Arts/binaries/svr/samp037svr_R2-1.tar.gz 
RUN tar zxf samp037svr_R2-1.tar.gz
#entering samp03 folder
WORKDIR /app/samp03
RUN wget https://raw.github.com/odegay/OxotaRP_Arts/binaries/svr/shoebill.TAR.gz 
RUN tar zxf shoebill.TAR.gz

WORKDIR /app/samp03/shoebill/bootstrap
#Download and install required files to run the Oxota-RP plugin
#!!!FIX This should also be fixed as just done to check other parts of the plugin
RUN wget https://raw.github.com/odegay/OxotaRP_Arts/mvn-repo/net/gtaun/shoebill-dependency-manager/2.0/shoebill-dependency-manager-2.0.jar 
RUN wget https://raw.github.com/odegay/OxotaRP_Arts/mvn-repo/net/gtaun/shoebill-launcher/2.0/shoebill-launcher-2.0.jar
#Download and install Oxota_RP java mode
#!!!FIX This should also be fixed as just done to check other parts of the plugin
WORKDIR /app/samp03/shoebill/gamemodes
RUN wget https://raw.github.com/odegay/OxotaRP_Arts/mvn-repo/org/reguhoop/oxotarpserver/0.1/oxotarpserver-0.1.jar

#Setting up Shoebill plugin
WORKDIR /app/samp03/plugins
RUN wget https://raw.github.com/odegay/ShoebillPlugin/master/build/src/Shoebill.so
RUN mv Shoebill.so Shoebill
RUN chmod ugo+x Shoebill 

#Running SAMP server
WORKDIR /app/samp03
RUN chmod ugo+x startup.sh 
RUN chmod ugo+x samp03svr 

# Make port 7777 available to the world outside this container
EXPOSE 7777

CMD  ["./startup.sh"]
#CMD  ["./samp03svr"]