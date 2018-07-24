set -ex
# SET THE FOLLOWING VARIABLES
# docker hub username
USERNAME=garadur
# image name
IMAGE=garadur/play
docker build -t $USERNAME/$IMAGE:latest .
