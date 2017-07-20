cd setup/postgresql

echo "Creating docker image"
sudo docker build -t cookdb .

echo "Does docker image exist?"
if [ -n "$(sudo docker images | grep cookdb)" ]; then
  sudo docker run -p 7000:5432 --name cookdb -e POSTGRES_PASSWORD=123 -d cookdb
fi
