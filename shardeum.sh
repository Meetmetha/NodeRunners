sudo apt-get update
sudo apt install docker.io -y
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo curl -O https://gitlab.com/shardeum/validator/dashboard/-/raw/main/installer.sh && chmod +x installer.sh && ./installer.sh
sudo su
shardeum_directory=$(find ~ -type d -name ".shardeum") 
cd "$shardeum_directory"
sudo bash shell.sh
operator-cli gui start
