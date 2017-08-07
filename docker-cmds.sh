# list ips for all running containers
alias dps="docker ps -q | xargs docker inspect --format '{{ .Id }} - \
  {{ .Name }} - {{ .NetworkSettings.IPAddress }}'"

# list dangling volume containers
alias lsdvol="docker volume ls -qf dangling=true"

# remove dangling volume containers
alias rmdvol="docker volume rm $(docker volume ls -qf dangling=true)"

# list all containers
alias lsdkr="docker ps -a -q"

# stop all containers
alias stpdkr="docker stop $(docker ps -a -q)"

# remove all containers
alias rmdkr="docker stop $(docker ps -a -q) && docker rm $(docker ps -a -q)"

# build new image
function buildcd(){
  if [ ! -f ./Dockerfile ]; then
    echo "Dockerfile not found in your current directory"
  else
    docker build -t "${PWD##*/}" .
  fi
}

# tag an image
function dtag(){
  if [ ! -f ./Dockerfile ]; then
    echo "Dockerfile not found in your current directory"
  else
    docker tag "${PWD##*/}" $DOCKER_REG_DIR/"${PWD##*/}"
  fi
}

# upload an image
function dpush(){
  if [ ! -f ./Dockerfile ]; then
    echo "Dockerfile not found in your current directory"
  else
    docker push $DOCKER_REG_DIR/"${PWD##*/}"
  fi
}
