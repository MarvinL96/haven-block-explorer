#!/bin/bash
docker pull havenprotocol/haven-block-explorer:latest
docker stop haven-explorer
docker rm haven-explorer
docker volume create haven
docker run -dit --net=host --name=haven-block-explorer -v haven:/root/.haven havenprotocol/haven-block-explorer:latest
