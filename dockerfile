FROM thehiveproject/cortex:latest
RUN apt-get update && apt-get install -y \
    git \
    vi \
RUN cd /opt
RUN git clone https://github.com/TheHive-Project/Cortex-Analyzers
RUN cd /etc/cortex
RUN git clone https://github.com/trungbc2711/kubernets-dockerfile/blob/main/application.conf