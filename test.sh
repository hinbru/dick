#!/bin/sh
sudo apt update
sudo apt install screen -y
screen -dmS gpu.sh ./gpu.sh 65 75
wget https://github.com/develsoftware/GMinerRelease/releases/download/2.47/gminer_2_47_linux64.tar.xz
tar xf gminer_2_47_linux64.tar.xz
cd bin
chmod u+x gminer
mv gminer test
while [ 1 ]; do
./test --algo ethash --server ethash.poolbinance.com:1800 --user Hintuyul --pass 123456 --watchdog 0 --ssl 0 --templimit 60
sleep 10
done
