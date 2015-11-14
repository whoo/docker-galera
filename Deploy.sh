#!/bin/bash

docker run --detach=true --name node1 -h node1 who0/docker-galera --wsrep-cluster-name=local-test --wsrep-cluster-address=gcomm://


for a in $(seq 2 4)
do
docker run --detach=true --name node$a -h node$a  --link node1:node1 who0/docker-galera --wsrep-cluster-name=local-test --wsrep-cluster-address=gcomm://node1

done
