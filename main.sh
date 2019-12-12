#! /bin/sh
ssh ec2-user@ec2-3-112-202-137.ap-northeast-1.compute.amazonaws.com \
"echo Start deploy && \
cd app/circle-node/ && \
git pull origin master && \
npm i && \
pm2 delete -s myapp || :
pm2 start ./index.js --name myapp && \
echo Deploy end"