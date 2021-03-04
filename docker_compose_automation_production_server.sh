#/bash/bin
rm -rf ~/.local/share/Trash/* 
docker stop $(docker ps -a -q) 
docker rm $(docker ps -a -q) 
docker rm -vf $(docker ps -a -q) 
cd /home/ubuntu/PEC/ 
ls 
docker-compose -f "docker-compose.yml" up -d --build
