FROM ubuntu:18.04

RUN apt-get update && \
 apt-get install -y openssh-server

RUN apt-get install -y git && \
apt-get install -y default-jre && \
apt-get install -y default-jdk

RUN apt-get install -y net-tools

RUN useradd remote_user && \
    echo "remote_user:1234" | chpasswd && \
    mkdir /home/remote_user/.ssh -p && \
    chmod 700 /home/remote_user/.ssh && \
    mkdir -p -m0755 /var/run/sshd

COPY remote-key.pub /home/remote_user/.ssh/authorized_keys

COPY restart.sh /home/remote_user/

RUN chown remote_user:remote_user   -R /home/remote_user && \
    chmod 400 /home/remote_user/.ssh/authorized_keys

EXPOSE 8080

CMD /usr/sbin/sshd -D
