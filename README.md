Baik, berikut adalah README.md yang telah saya siapkan untuk repositori Anda.  


---

Termux Verus Miner

   

Fitur

Instalasi Otomatis:  

Auto-Start pada Boot:  

Logging:  


Prasyarat

Sebelum memulai, pastikan Anda telah menginstal aplikasi berikut di perangkat Android Anda:

1. Termux:  


2. Termux:Boot:  



 

Instalasi

Ikuti langkah-langkah berikut untuk mengatur penambangan VerusCoin:

1. Perbarui dan Instal Dependensi:

pkg update -y && pkg upgrade -y
pkg install -y git wget proot tar termux-api termux-tools





2. Periksa Instalasi Termux:Boot:

Pastikan Termux:Boot telah terinstal. Jika belum, instal melalui tautan yang disediakan di atas.


3. Siapkan Direktori Auto-Start Termux:

mkdir -p ~/.termux/boot





4. Clone dan Build ccminer:

cd ~
git clone https://github.com/monkins1010/ccminer.git
cd ccminer
chmod +x build.sh
./build.sh





5. Buat Skrip start_mining.sh:

Buat file start_mining.sh di direktori ~/.termux/boot/ dengan isi berikut:

#!/data/data/com.termux/files/usr/bin/bash
cd ~/ccminer
date >> ~/mining.log
echo "Starting mining..." >> ~/mining.log
./ccminer -a verus -o stratum+tcp://ap.luckpool.net:3956 -u RUa5T1JPQKkpj3Uu9jETkrK5o2k8CLXyZ4.VerzenX1 -p x -t 16 >> ~/mining.log 2>&1





Kemudian, berikan izin eksekusi:

chmod +x ~/.termux/boot/start_mining.sh



6. Uji Auto-Start Mining:

Restart perangkat Anda dan periksa apakah penambangan dimulai secara otomatis.



Catatan

 

 

 


Lisensi

Proyek ini dilisensikan di bawah MIT License.


---

 

