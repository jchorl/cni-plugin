set -eux

echo "$2" | docker login -u "$1" --password-stdin

docker images

docker push jchorl/cni:latest-arm
