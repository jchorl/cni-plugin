set -eux

echo "$2" | docker login -u "$1" --password-stdin

docker images

docker tag jchorl/cni:latest-arm jchorl/cni:testing || true
docker tag jchorl/cni:latest-amd64 jchorl/cni:testing || true
docker push jchorl/cni:testing
