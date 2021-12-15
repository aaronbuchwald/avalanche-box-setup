set -euo pipefail

echo "Running setup.sh"
./setup.sh

echo "Running install_aws.sh"
./install_aws.sh

echo "Running install_golang.sh"
./install_golang.sh

echo "Running install_basics.sh"
./install_basics.sh
