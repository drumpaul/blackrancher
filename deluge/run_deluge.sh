#!/bin/bash
docker rm -f delugeweb
docker run --name=delugeweb -d -v "/home/cotlod:/data" --expose=53160 -p 8112:8112 --expose=53160/udp --expose=58846 cotlod/delugeweb
