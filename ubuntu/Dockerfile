FROM ubuntu:18.04

RUN apt-get update && \
 apt-get install -y openssh-server

RUN apt-get install -y git && \
apt-get install -y default-jre && \
apt-get install -y default-jdk

RUN apt-get update && apt-get install -y zip && apt-get install -y curl

RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
unzip awscliv2.zip && \
./aws/install

RUN apt-get update && apt-get install -y nodejs npm

RUN useradd remote_user && \
    echo "remote_user:1234" | chpasswd && \
    mkdir /home/remote_user/.ssh -p && \
    chmod 700 /home/remote_user/.ssh && \
    mkdir -p -m0755 /var/run/sshd

COPY remote-key.pub /home/remote_user/.ssh/authorized_keys

RUN chown remote_user:remote_user -R /home/remote_user && \
    chmod 600 /home/remote_user/.ssh/authorized_keys

EXPOSE 8080

EXPOSE 5000

CMD /usr/sbin/sshd -D
