# htb-kali-docker

The goal is to make the classic Kali-Linux docker container work with openvpn on MacOS, Linux and Windows, for an easy to use docker container to play hack-the-box.

## Linux

### Build the docker container

```bash
sudo docker build -t kali-htb .
```

### Run the docker container

```bash
sudo docker run -it --rm --cap-add=NET_ADMIN --device /dev/net/tun --sysctl net.ipv6.conf.all.disable_ipv6=0 -v $PWD:$PWD kali-htb bash
```

### Run the openvpn config

First you need to copy your config inside the docker container (I recommend docker cp).

Then just run:
```bash
openvpn --daemon --config <yourconfig.ovpn>
```
