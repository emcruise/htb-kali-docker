FROM kalilinux/kali-rolling

RUN apt-get update && apt-get upgrade -y

RUN apt-get install -y openvpn net-tools
