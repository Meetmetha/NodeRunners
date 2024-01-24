if [ -z "$1" ]; then
    echo "Usage: $0 --name=<value>"
    exit 1
fi
walletAddress="${1#*=}"
sudo apt-get update
sudo apt install pkg-config curl git-all build-essential libssl-dev libclang-dev ufw -y
sudo apt install docker.io -y
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
cd /var/lib
mkdir bevmnode
sudo docker pull btclayer2/bevm:v0.1.1
sudo chmod 777 /var/run/docker.sock
sudo docker run -d -v /var/lib/bevmnode:/root/.local/share/bevm btclayer2/bevm:v0.1.1 bevm --chain=testnet --name="$name_parameter" --pruning=archive “--telemetry-url=wss://telemetry.bevm.io/submit 0”
