export DOCKER_IMAGE=docker.io/ljhiyh/chat-client-base


if [[ $1 == 'base' ]]
then
  echo "BASE IMAGE IS BEING BUILT"
  cp ./dockerfile/baseimage/Dockerfile .
  docker build -t $DOCKER_IMAGE .
  docker push $DOCKER_IMAGE
else 
  for docker in $(ls ./dockerfile/ |grep -v baseimage)
  do 
    cp  ./dockerfile/$docker/Dockerfile .
    docker build -t $DOCKER_IMAGE:$docker .
    docker push $DOCKER_IMAGE:$docker
  done

fi
