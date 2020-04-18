set -eux

echo "$2" | docker login -u "$1" --password-stdin

docker images

docker tag jchorl/cni:latest-arm jchorl/cni:latest
docker push jchorl/cni:latest
