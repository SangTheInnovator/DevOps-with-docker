github_repo=$1
dockerhub_repo=$2

echo "$DOCKER_PWD" | docker login --username "$DOCKER_USR" --password-stdin

repo_name = $(basename 'github_repo')
git clone https://github.com/"$github_repo".git
cd "$repo_name"

docker build -t mluukkai/"$repo_name"

docker push "$dockerhub_repo"