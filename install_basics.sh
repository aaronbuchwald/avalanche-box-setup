# Assumes go1.17.1 has been set up
set -euo pipefail

AVA_LABS_PATH=$GOPATH/src/github.com/ava-labs

echo "Creating Ava Labs directory"
mkdir -p $AVA_LABS_PATH

echo "Installing AvalancheGo"
git -C $AVA_LABS_PATH clone git@github.com:ava-labs/avalanchego.git
git -C $AVA_LABS_PATH/avalanchego remote add internal git@github.com:ava-labs/avalanchego-internal.git

echo "Installing Coreth"
git -C $AVA_LABS_PATH clone git@github.com:ava-labs/coreth.git
git -C $AVA_LABS_PATH/coreth remote add internal git@github.com:ava-labs/coreth-internal.git

echo "Installing Avash"
git -C $AVA_LABS_PATH clone git@github.com:ava-labs/avash.git
