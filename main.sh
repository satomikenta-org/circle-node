#! /bin/sh
ssh $HOST \
"echo Start deploy && \
cd app/circle-node/ && \
git pull origin master && \
npm i && \
pm2 startup && \
pm2 delete -s myapp || :
pm2 start ./index.js --name myapp && \
echo Deploy end"