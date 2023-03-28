rm -rf project
git clone $1 project
cd ./project
docker build . -t testproject
docker tag testproject $2:latest
docker  push $2:latest