FROM thehiveproject/cortex:latest
RUN apt-get update && apt-get install -y \
    git \
    vim
WORKDIR /opt
RUN git clone https://github.com/TheHive-Project/Cortex-Analyzers
WORKDIR /tmp
RUN git clone https://github.com/trungbc2711/kubernets-dockerfile
RUN cp ./kubernets-dockerfile/application.conf /etc/cortex/application.conf
