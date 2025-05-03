#!/bin/bash

echo "--------------- 서버 배포 시작 -----------------"
docker stop minseonjae-server || true
docker rm minseonjae-server || true
docker pull 940482451773.dkr.ecr.ap-northeast-2.amazonaws.com/minseonjae-server:latest
docker run -d --name minseonjae-server -p 3000:3000 940482451773.dkr.ecr.ap-northeast-2.amazonaws.com/minseonjae-server:latest
echo "--------------- 서버 배포 끝 ------------------"
