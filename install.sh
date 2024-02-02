

#!/bin/bash

sudo apt update
sudo apt upgrade -y

chmod +x *

./pkms.sh
./packages.sh
./fingerprints.sh
./themes.sh
./zsh.sh
./git.sh

