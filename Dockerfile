#
# Boinc Dockerfile
#
# https://github.com/
#

# Pull base image.
FROM debian:latest

MAINTAINER hihouhou < hihouhou@hihouhou.com >


# Update & install packages for boinc
RUN apt-get update && \
    apt-get install -y boinc-client boinc-manager 

#Configure 
#ADD moscrack.conf /etc/moscrack/moscrack.conf
#RUN mkdir /opt/moscrack


#ADD links
#RUN ln -s /${MOSCRACK_VERSION}/moscrack /usr/local/bin/moscrack && \
#    ln -s /${MOSCRACK_VERSION}/mosctop /usr/local/bin/mosctop && \
#    ln -s /${MOSCRACK_VERSION}/daemon/moscd /usr/local/bin/moscd && \
#    ln -s /${MOSCRACK_VERSION}/moscapid /usr/local/bin/moscapid && \
#    ln -s $(find /root/ -type d -name *Acme* | grep 'blib/lib/Acme') /usr/lib/perl5/Acme


EXPOSE 8080

#CMD ["boinc", "--daemon"]
CMD ["boinc"]
