FROM codercom/code-server

USER root

RUN apt-get update && apt-get upgrade -y python3 && apt-get install -y mosquitto-clients python3-pip git

RUN pip3 install paho-mqtt

RUN cd /home/coder && git clone https://github.com/CiscoDevNet/iot-protocols

WORKDIR /home/coder/iot-protocols

USER coder