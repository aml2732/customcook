echo "Creating docker image"
sudo docker build -t customcook .
echo "Does docker image exist?"

if [ -n "$(sudo docker images | grep customcook)" ]; then
  echo "Customcook image was found"
  sudo docker run -p 7000:7000 customcook
  #sudo docker run -p 7000:7000 -it --entrypoint=/bin/bash customcook
  #sudo docker run -p 7000:7000 -it -v .:/home/chef --entrypoint=/bin/bash customcook
fi
