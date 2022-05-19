#!/bin/bash
echo "repository address plz: "
read repo

git clone $repo sovellus
cd sovellus

echo "gimme docker name"
read -p 'Username: ' usrvar
cat /usr/src/app/my_token.txt | docker login --username $usrvar --password-stdin

echo "tell me image name"
read image

docker build . -t $usrvar/$image
docker image push $usrvar/$image
