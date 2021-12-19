sudo wget -O - https://downloads.avax.network/avalanchego.gpg.key | apt-key add -
sudo echo "deb https://downloads.avax.network/apt focal main" > /etc/apt/sources.list.d/avalanche.list
sudo apt update
sudo apt install avalanchego
