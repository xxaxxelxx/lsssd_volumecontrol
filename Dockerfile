FROM debian:buster
MAINTAINER xxaxxelxx <x@axxel.net>

ENV DEBIAN_FRONTEND=noninteractive
ENV TERM=xterm

RUN apt-get -qq -y update
RUN apt-get -qq -y dist-upgrade

RUN apt-get -qq -y install ssh
RUN apt-get -qq -y install sudo
RUN apt-get -qq -y install rsync
RUN apt-get -qq -y install mc

#RUN sed -e 's|#PermitRootLogin|PermitRootLogin|' -i /etc/ssh/sshd_config

# clean up
RUN apt-get clean

RUN mkdir /var/run/sshd

RUN useradd -m -g nogroup storageuser
RUN sudo -u storageuser mkdir /home/storageuser/.ssh
COPY authorized_keys2 /home/storageuser/.ssh/
RUN chown -R storageuser:nogroup /home/storageuser/.ssh
RUN sudo -u storageuser chmod -R 700 /home/storageuser/.ssh

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
#CMD [ "bash" ]

# END
