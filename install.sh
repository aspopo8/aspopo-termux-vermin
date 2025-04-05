#!/data/data/com.termux/files/usr/bin/bash

pkg update -y && pkg upgrade -y
pkg install git wget -y
pkg install termux-api -y

mkdir -p ~/.termux/boot
cat > ~/.termux/boot/start_mining.sh << 'EOM'
#!/data/data/com.termux/files/usr/bin/bash
cd ~/ccminer
./ccminer -a verus -o stratum+tcp://ap.luckpool.net:3956 -u RUa5T1JPQKkpj3Uu9jETkrK5o2k8CLXyZ4.VerzenX1 -p x -t 16
EOM
chmod +x ~/.termux/boot/start_mining.sh

# Download dan compile ccminer jika belum ada
if [ ! -d ~/ccminer ]; then
    git clone https://github.com/veruscoin/veruscoin.git ~/ccminer
    cd ~/ccminer
    ./autogen.sh
    ./configure CXX=g++ CC=gcc
    make -j$(nproc)
fi
