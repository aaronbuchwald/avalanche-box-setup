set -euo pipefail

# Install Golang
sudo apt-get --assume-yes install golang-go


DESIRED_GO_PATH=/home/ubuntu/go
# Configure GOPATH
echo "export GOPATH=$DESIRED_GO_PATH" >> /home/ubuntu/.profile
source /home/ubuntu/.profile

# Install GVM
bash < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)
source /home/ubuntu/.gvm/scripts/gvm
echo "source /home/ubuntu/.gvm/scripts/gvm" >> /home/ubuntu/.profile

# Install and select go1.17.9
gvm install go1.17.9
echo "gvm use go1.17.9 > /dev/null && export GOPATH=$DESIRED_GO_PATH" >> /home/ubuntu/.profile
source /home/ubuntu/.profile
