#! /bin/sh

ssh $HOST \
"echo Start deploy && \
cd app/circle-node/ && \
git pull origin master && \
npm i && \
sudo pm2 startup -f && \
pm2 delete -s myapp || :
pm2 start ./index.js --name myapp && \
echo Deploy END"