echo "stop and remove all running docker containers"
sudo docker stop $(sudo docker ps -a -q)
sudo docker rm $(sudo docker ps -a -q)

echo "remove unnamed images"
sudo docker rmi $(sudo docker images | grep "^<none>" | awk "{print $3}")

echo "clean up complete"
