
if [[ $1 == 'base' ]]
then
  echo "BASE IMAGE IS BEING BUILT"
  cp ./dockerfile/baseimage/Dockerfile .
  docker build -t docker.io/ljhiyh/chat-client-base .
  docker push docker.io/ljhiyh/chat-client-base
else 
  for docker in $(ls ./dockerfile/ |grep -v baseimage)
  do 
    cp  ./dockerfile/$docker/Dockerfile .
    docker build -t docker.io/ljhiyh/chat-client:$docker .
    docker push docker.io/ljhiyh/chat-client:$docker
  done

fi
