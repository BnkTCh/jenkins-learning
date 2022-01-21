FROM remote-ubuntu

RUN useradd jenkins && \
    echo "jenkins:1234" | chpasswd && \
    mkdir /home/jenkins/.ssh -p && \
    chmod 700 /home/jenkins/.ssh && \
    mkdir -p -m0755 /var/run/sshd

COPY agent-ubuntu.pub /home/jenkins/.ssh/authorized_keys

RUN chown jenkins:jenkins -R /home/jenkins && \
    chmod 600 /home/jenkins/.ssh/authorized_keys

CMD /usr/sbin/sshd -D
