#/bin/bash

cd ~
cd /usr/local/bin
./acre-cli stop
rm -rf acred acre-cli acre-tx
wget https://github.com/acrecrypto/Acre/releases/download/2.1.0/acre-2.1.0-x86_64-linux-gnu.tar.gz
tar -xzf acre-2.1.0-x86_64-linux-gnu.tar.gz
rm -rf acre-2.1.0-x86_64-linux-gnu.tar.gz
./acred -daemon
sleep 30
./acre-cli getinfo
