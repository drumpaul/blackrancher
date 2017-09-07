#!/bin/bash
docker rm -f delugeweb
docker run --name=delugeweb -d -v "/home/cotlod:/data" -p 53160 -p 8112:8112 -p 53160/udp -p 58846 cotlod/delugeweb
