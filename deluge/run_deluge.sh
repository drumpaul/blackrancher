#!/bin/bash
#docker rm -f delugeweb
#docker run --name=delugeweb -d -v "/home/cotlod:/data" --expose=53160 -p 8112:8112 --expose=53160/udp --expose=58846 cotlod/delugeweb
docker run \
  --name=deluge \
  --net=host \
  -e PUID=1000 \
  -e PGID=1000 \
  -e UMASK_SET=022 \
  -e TZ=timezone \
  -v /home/rancher/conf:/config \
  -v /home/rancher/dati:/downloads \
  --restart unless-stopped \
  linuxserver/deluge
