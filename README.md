# Jarkom-Modul-3-IT11-2024

## Kelompok IT11
| NRP | Nama |
| ------ | ------ |
| 5027211049 | Tridiktya Hardani Putra |
| 5027221008 | Jeany Aurellia Putri Dewati |


## DAFTAR ISI
- [Jarkom-Modul-3-IT11-2024](#jarkom-modul-3-it11-2024)
	- [Kelompok IT11](#kelompok-it11)
	- [DAFTAR ISI](#daftar-isi)
	- [TOPOLOGI](#topologi)
	- [KONFIGURASI](#konfigurasi)
		- [ARAKIS (DHCP RELAY)](#arakis-dhcp-relay)
		- [IRULAN (DNS SERVER)](#irulan-dns-server)
		- [MOHIAM (DHCP SERVER)](#mohiam-dhcp-server)
		- [CHANI (DATABASE SERVER)](#chani-database-server)
		- [STILGAR (LOAD BALANCER)](#stilgar-load-balancer)
		- [LETO (LARAVEL WORKER)](#leto-laravel-worker)
		- [DUNCAN (LARAVEL WORKER)](#duncan-laravel-worker)
		- [JESSICA (LARAVEL WORKER)](#jessica-laravel-worker)
		- [PAUL (CLIENT)](#paul-client)
		- [VLADIMIR (PHP WORKER)](#vladimir-php-worker)
		- [RABBAN (PHP WORKER)](#rabban-php-worker)
		- [FEYD (PHP WORKER)](#feyd-php-worker)
		- [DMITRI (CLIENT)](#dmitri-client)
	- [SETUP .bashrc](#setup-bashrc)
		- [ARAKIS (DHCP RELAY)](#arakis-dhcp-relay-1)
		- [IRULAN (DNS SERVER)](#irulan-dns-server-1)
		- [MOHIAM (DHCP SERVER)](#mohiam-dhcp-server-1)
		- [CHANI (DATABASE SERVER)](#chani-database-server-1)
		- [VLADIMIR, RAABAN, FEYD (PHP WORKER)](#vladimir-raaban-feyd-php-worker)
		- [LETO, DUNCAN, JESSICA (LARAVEL WORKER)](#leto-duncan-jessica-laravel-worker)
		- [STILGAR (LOAD BALANCER)](#stilgar-load-balancer-1)
		- [DMITRI, PAUL (CLIENT)](#dmitri-paul-client)
	- [IP ADDRESS](#ip-address)
	- [JAWABAN](#jawaban)
		- [Nomor 0 \& 1](#nomor-0--1)
		- [Nomor 2](#nomor-2)
		- [Nomor 3](#nomor-3)
		- [Nomor 4](#nomor-4)
		- [Nomor 5](#nomor-5)
		- [Nomor 6](#nomor-6)
   			- [Scrip](#script-no-6)
      			- [Hasil](#hasil-no-6) 
		- [Nomor 7](#nomor-7)
      			- [Scrip](#script-no-7)
      			- [Hasil](#hasil-no-7) 
		- [Nomor 8](#nomor-8)
      			- [Scrip](#script-no-8)
      			- [Hasil](#hasil-no-8) 
		- [Nomor 9](#nomor-9)
       			- [Scrip](#script-no-9)
      			- [Hasil](#hasil-no-9) 
		- [Nomor 10](#nomor-10)
       			- [Scrip](#script-no-10)
      			- [Hasil](#hasil-no-10) 
		- [Nomor 11](#nomor-11)
       			- [Scrip](#script-no-11)
      			- [Hasil](#hasil-no-11) 
		- [Nomor 12](#nomor-12)
       			- [Scrip](#script-no-12)
      			- [Hasil](#hasil-no-12) 
		- [Nomor 13](#nomor-13)
			- [Script (Chani)](#script-chani)
			- [Hasil](#hasil)
			- [Leto](#leto)
			- [Duncan](#duncan)
			- [Jessica](#jessica)
		- [Nomor 14](#nomor-14)
			- [Script (Laravel Workers - Leto, Duncan, Jessica)](#script-laravel-workers---leto-duncan-jessica)
			- [Hasil](#hasil-1)
		- [Nomor 15](#nomor-15)
			- [Script (Client)](#script-client)
			- [Hasil](#hasil-2)
		- [Nomor 16](#nomor-16)
			- [Script (Client)](#script-client-1)
			- [Hasil](#hasil-3)
		- [Nomor 17](#nomor-17)
			- [Script (Client)](#script-client-2)
			- [Hasil](#hasil-4)
		- [Nomor 18](#nomor-18)
			- [Script (Irulan)](#script-irulan)
			- [Script (Stilgar)](#script-stilgar)
			- [Hasil](#hasil-5)
		- [Nomor 19](#nomor-19)
			- [Script 1 (Laravel Workers - Leto, Duncan, Jessica)](#script-1-laravel-workers---leto-duncan-jessica)
			- [Script 2 (Laravel Workers - Leto, Duncan, Jessica)](#script-2-laravel-workers---leto-duncan-jessica)
			- [Script 3 (Laravel Workers - Leto, Duncan, Jessica)](#script-3-laravel-workers---leto-duncan-jessica)
			- [Script 4 (Laravel Workers - Leto, Duncan, Jessica)](#script-4-laravel-workers---leto-duncan-jessica)
			- [Hasil (Script 1)](#hasil-script-1)
			- [Hasil (Script 2)](#hasil-script-2)
			- [Hasil (Script 3)](#hasil-script-3)
			- [Hasil (Script 4)](#hasil-script-4)
			- [Analisis](#analisis)
		- [Nomor 20](#nomor-20)
			- [Script (Stilgar)](#script-stilgar-1)
			- [Hasil](#hasil-6)

## TOPOLOGI

![image](https://github.com/trdkhardani/Jarkom-Modul-3-IT11-2024/assets/115559151/e39a9422-c50c-4295-8560-1ec2a1111069)

## KONFIGURASI
### ARAKIS (DHCP RELAY)
```
auto eth0
iface eth0 inet dhcp

auto eth1
iface eth1 inet static
	address 10.69.1.1
	netmask 255.255.255.0

auto eth2
iface eth2 inet static
	address 10.69.2.1
	netmask 255.255.255.0

auto eth3
iface eth3 inet static
	address 10.69.3.1
	netmask 255.255.255.0

auto eth4
iface eth4 inet static
	address 10.69.4.1
	netmask 255.255.255.0
```
### IRULAN (DNS SERVER)
```
auto eth0
iface eth0 inet static
	address 10.69.3.2
	netmask 255.255.255.0
	gateway 10.69.3.1
```
### MOHIAM (DHCP SERVER)
```
auto eth0
iface eth0 inet static
	address 10.69.3.3
	netmask 255.255.255.0
	gateway 10.69.3.1
```
### CHANI (DATABASE SERVER)
```
auto eth0
iface eth0 inet static
	address 10.69.4.2
	netmask 255.255.255.0
	gateway 10.69.4.1
```
### STILGAR (LOAD BALANCER)
```
auto eth0
iface eth0 inet static
	address 10.69.4.3
	netmask 255.255.255.0
	gateway 10.69.4.1
```
### LETO (LARAVEL WORKER)
```
auto eth0
iface eth0 inet static
	address 10.69.2.3
	netmask 255.255.255.0
    gateway 10.69.2.1
```
### DUNCAN (LARAVEL WORKER)
```
auto eth0
iface eth0 inet static
	address 10.69.2.4
	netmask 255.255.255.0
    gateway 10.69.2.1
```
### JESSICA (LARAVEL WORKER)
```
auto eth0
iface eth0 inet static
	address 10.69.2.5
	netmask 255.255.255.0
    gateway 10.69.2.1
```
### PAUL (CLIENT)
```
auto eth0
iface eth0 inet dhcp
```
### VLADIMIR (PHP WORKER)
```
auto eth0
iface eth0 inet static
	address 10.69.1.3
	netmask 255.255.255.0
    gateway 10.69.1.1
```
### RABBAN (PHP WORKER)
```
auto eth0
iface eth0 inet static
	address 10.69.1.4
	netmask 255.255.255.0
    gateway 10.69.1.1
```
### FEYD (PHP WORKER)
```
auto eth0
iface eth0 inet static
	address 10.69.1.5
	netmask 255.255.255.0
    gateway 10.69.1.1

```
### DMITRI (CLIENT)
```
auto eth0
iface eth0 inet dhcp
```

## SETUP .bashrc
Untuk melakukan instalasi package dan konfigurasi secara otomatis setelah melakukan start pada nodes.

### ARAKIS (DHCP RELAY)
```bash
iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE -s 10.69.0.0/16
echo nameserver 192.168.122.1 > /etc/resolv.conf
apt-get update
apt install isc-dhcp-relay -y
service isc-dhcp-relay start
```

### IRULAN (DNS SERVER)
```bash
echo 'nameserver 192.168.122.1' > /etc/resolv.conf
apt-get update
apt-get install bind9 -y  
```

### MOHIAM (DHCP SERVER)
```bash
echo 'nameserver 10.69.3.2' > /etc/resolv.conf   # DNS Server 
apt-get update
apt install isc-dhcp-server -y
```

### CHANI (DATABASE SERVER)
```bash
echo 'nameserver 10.69.3.2' > /etc/resolv.conf   # DNS Server
apt-get update
apt-get install mariadb-server -y
service mysql start
```

### VLADIMIR, RAABAN, FEYD (PHP WORKER)
```bash
echo 'nameserver 192.168.122.1' > /etc/resolv.conf  
apt-get update
apt-get install nginx -y
apt-get install wget -y
apt-get install unzip -y
apt-get install lynx -y
apt-get install htop -y
apt-get install apache2-utils -y
apt-get install php7.3-fpm php7.3-common php7.3-mysql php7.3-gmp php7.3-curl php7.3-intl php7.3-mbstring php7.3-xmlrpc php7.3-gd php7.3-xml php7.3-cli php7.3-zip -y
echo 'nameserver 10.69.3.2' > /etc/resolv.conf

service nginx start
service php7.3-fpm start
```

### LETO, DUNCAN, JESSICA (LARAVEL WORKER)
```bash
echo 'deb [signed-by=/usr/share/keyrings/deb.sury.org-php.gpg] https://packages.sury.org/php/ buster main' > /etc/apt/sources.list.d/php.list
echo 'nameserver 10.69.3.2' > /etc/resolv.conf
apt-get update
apt-get install lynx -y
apt-get install mariadb-client -y
apt-get install -y lsb-release ca-certificates apt-transport-https software-properties-common gnupg2
curl -sSLo /usr/share/keyrings/deb.sury.org-php.gpg https://packages.sury.org/php/apt.gpg
sh -c 'echo "deb [signed-by=/usr/share/keyrings/deb.sury.org-php.gpg] https://packages.sury.org/php/ $(lsb_release -sc) main" > /etc/apt/sources.list.d/php.list'
apt-get update
apt-get install php8.0-mbstring php8.0-xml php8.0-cli   php8.0-common php8.0-intl php8.0-opcache php8.0-readline php8.0-mysql php8.0-fpm php8.0-curl unzip wget -y
apt-get install nginx -y

service nginx start
service php8.0-fpm start
```

### STILGAR (LOAD BALANCER)
```bash
echo 'nameserver 10.69.3.2' > /etc/resolv.conf   # DNS Server
apt-get update
apt-get install apache2-utils -y
apt-get install nginx -y
apt-get install lynx -y

service nginx start
```

### DMITRI, PAUL (CLIENT)
```bash
apt update
apt install lynx -y
apt install htop -y
apt install apache2-utils -y
apt-get install jq -y
```

## IP ADDRESS
| Header                   | IP Address   |
|--------------------------|--------------|
| ARAKIS (DHCP RELAY)      | ROUTER       |
| IRULAN (DNS SERVER)      | 10.69.3.2    |
| MOHIAM (DHCP SERVER)     | 10.69.3.3    |
| CHANI (DATABASE SERVER)  | 10.69.4.2    |
| STILGAR (LOAD BALANCER)  | 10.69.4.3    |
| LETO (LARAVEL WORKER)    | 10.69.2.3    |
| DUNCAN (LARAVEL WORKER)  | 10.69.2.4    |
| JESSICA (LARAVEL WORKER) | 10.69.2.5    |
| PAUL (CLIENT)            | DHCP         |
| VLADIMIR (PHP WORKER)    | 10.69.1.3    |
| RABBAN (PHP WORKER)      | 10.69.1.4    |
| FEYD (PHP WORKER)        | 10.69.1.5    |
| DMITRI (CLIENT)          | DHCP         |


## JAWABAN
### Nomor 0 & 1
Masukkan script ini pada node irulan dan jalankan
```
echo 'zone "harkonen.it11.com" {
    type master;
    file "/etc/bind/sites/harkonen.it11.com";
};
zone "atreides.it11.com" {
    type master;
    file "/etc/bind/sites/atreides.it11.com";
};' > /etc/bind/named.conf.local

mkdir -p /etc/bind/sites
cp /etc/bind/db.local /etc/bind/sites/harkonen.it11.com
cp /etc/bind/db.local /etc/bind/sites/atreides.it11.com

echo ';
; BIND data file for local loopback interface
;
$TTL    604800
@       IN      SOA     harkonen.it11.com. root.harkonen.it11.com. (
                        2023111401      ; Serial
                         604800         ; Refresh
                          86400         ; Retry
                        2419200         ; Expire
                         604800 )       ; Negative Cache TTL
;
@       IN      NS      harkonen.it11.com.
@       IN      A       10.69.1.3    ; IP Vladimir
www     IN      CNAME   harkonen.it11.com.' > /etc/bind/sites/harkonen.it11.com



echo ';
; BIND data file for local loopback interface
;
$TTL    604800
@       IN      SOA     atreides.it11.com. root.atreides.it11.com. (
                              2023111401         ; Serial
                              604800              ; Refresh
                               86400              ; Retry
                             2419200              ; Expire
                              604800 )            ; Negative Cache TTL
;
@       IN      NS      atreides.it11.com.
@       IN      A       10.69.2.3    ; IP Leto
www     IN      CNAME   atreides.it11.com.' > /etc/bind/sites/atreides.it11.com

echo 'options {
    directory "/var/cache/bind";

    forwarders {
        192.168.122.1;
    };

    // dnssec-validation auto;

    allow-query { any; };
    auth-nxdomain no;    # conform to RFC1035
    listen-on-v6 { any; };
};' > /etc/bind/named.conf.options

service bind9 restart
```

### Nomor 2
Masukkan script Mohiam dan Jalankan
```
echo ' subnet 10.69.1.0 netmask 255.255.255.0 {
range 10.69.1.14 10.69.1.28;
range 10.69.1.49 10.69.1.70;
}
' > /etc/dhcp/dhcpd.conf

service isc-dhcp-server restart
```
### Nomor 3
Masukkan script ini pada Mohiam dan Jalankan
```
echo'
subnet 10.69.2.0 netmask 255.255.255.0 {
range 10.69.2.15 10.69.2.25;
range 10.69.2.200 10.69.2.210;
option routers 10.69.2.1;
}

subnet 10.69.4.0 netmask 255.255.255.0 {
}

subnet 10.69.3.0 netmask 255.255.255.0 {
}

' >> /etc/dhcp/dhcpd.conf
service isc-dhcp-server restart
```
### Nomor 4
Masukkan ini pada araski dan jalankan
```
echo '# Defaults for isc-dhcp-relay initscript
# sourced by /etc/init.d/isc-dhcp-relay
# installed at /etc/default/isc-dhcp-relay by the maintainer scripts

#
# This is a POSIX shell fragment
#

# What servers should the DHCP relay forward requests to?
SERVERS="10.69.3.3"

# On what interfaces should the DHCP relay (dhrelay) serve DHCP requests?
INTERFACES="eth1 eth2 eth3 eth4"

# Additional options that are passed to the DHCP relay daemon?
OPTIONS=""' > /etc/default/isc-dhcp-relay

service isc-dhcp-relay restart

echo "REMINDER 1: Jalankan nano /etc/sysctl.conf dan uncomment net.ipv4.ip_forward=1. Setelah itu jalankan service isc-dhcp-relay restart."
echo "REMINDER 2: Setelah itu, restart semua client."
```

Masukkan ini pada mohiam dan jalankan
```
echo ' 
subnet 10.69.1.0 netmask 255.255.255.0 {
range 10.69.1.14 10.69.1.28;
range 10.69.1.49 10.69.1.70;
option routers 10.69.1.1;
option broadcast-address 10.69.1.255;
option domain-name-servers 10.69.3.2;
}

subnet 10.69.2.0 netmask 255.255.255.0 {
range 10.69.2.15 10.69.2.25;
range 10.69.2.200 10.69.2.210;
option routers 10.69.2.1;
option broadcast-address 10.69.2.255;
option domain-name-servers 10.69.3.2;
}

subnet 10.69.3.0 netmask 255.255.255.0 {
}

subnet 10.69.4.0 netmask 255.255.255.0 {
}


' > /etc/dhcp/dhcpd.conf

service isc-dhcp-server restart
```

### Nomor 5
Masukkan ini pada dhcp server dan jalankan
```
echo ' 
subnet 10.69.1.0 netmask 255.255.255.0 {
range 10.69.1.14 10.69.1.28;
range 10.69.1.49 10.69.1.70;
option routers 10.69.1.1;
option broadcast-address 10.69.1.255;
option domain-name-servers 10.69.3.2;
default-lease-time 300;
max-lease-time 5220;
}

subnet 10.69.2.0 netmask 255.255.255.0 {
range 10.69.2.15 10.69.2.25;
range 10.69.2.200 10.69.2.210;
option routers 10.69.2.1;
option broadcast-address 10.69.2.255;
option domain-name-servers 10.69.3.2;
default-lease-time 1200;
max-lease-time 5220;
}

subnet 10.69.3.0 netmask 255.255.255.0 {
}

subnet 10.69.4.0 netmask 255.255.255.0 {
}


' > /etc/dhcp/dhcpd.conf

service isc-dhcp-server restart
```
### Nomor 6
#### script no 6
Masukkan script dibawah pada semua worker PHP untuk upload nginx dan jalankan
```
wget -O '/var/www/harkonen.it11.com' 'https://drive.google.com/u/0/uc?id=1lmnXJUbyx1JDt2OA5z_1dEowxozfkn30&export=download'
unzip -o /var/www/harkonen.it11.com -d /var/www/
rm /var/www/harkonen.it11.com
mv /var/www/modul-3 /var/www/harkonen.it11.com

cp /etc/nginx/sites-available/default /etc/nginx/sites-available/harkonen.it11.com
ln -s /etc/nginx/sites-available/harkonen.it11.com /etc/nginx/sites-enabled/
rm /etc/nginx/sites-enabled/default
```
Lakukan pengujian seperti ini
```
lynx http://harkonen.it11.com/
```
#### hasil no 6
Dan didapatkan hasil web seperti ini

![image](https://github.com/trdkhardani/Jarkom-Modul-3-IT11-2024/assets/115559151/1a1940bd-f327-4367-898d-36c9bd2a40f0)

Kemudian masukkan ini pada 
### Nomor 7
#### script no 7
Jalankan ini pada load balancer dan jalankan. 
```
cp /etc/nginx/sites-available/default /etc/nginx/sites-available/lb_php

echo ' upstream worker {
        #least_conn;
        #ip_hash;
    server 10.69.1.3;
    server 10.69.1.4;
    server 10.69.1.5;
}

server {
    listen 80;
    server_name harkonen.it11.com www.harkonen.it11.com;

    root /var/www/html;

    index index.html index.htm index.nginx-debian.html;

    server_name _;

    location / {
        proxy_pass http://worker;
    }
} ' > /etc/nginx/sites-available/lb_php

ln -s /etc/nginx/sites-available/lb_php /etc/nginx/sites-enabled/
rm /etc/nginx/sites-enabled/default

service nginx restart

```

Masukkan ini pada Irulan
```
echo ';
; BIND data file for local loopback interface
;
$TTL    604800
@       IN      SOA     harkonen.it11.com. root.harkonen.it11.com. (
                        2023111401      ; Serial
                         604800         ; Refresh
                          86400         ; Retry
                        2419200         ; Expire
                         604800 )       ; Negative Cache TTL
;
@       IN      NS      harkonen.it11.com.
@       IN      A       10.69.4.3    ; IP lb Stilgar
www     IN      CNAME   harkonen.it11.com.' > /etc/bind/sites/harkonen.it11.com

echo '
; BIND data file for local loopback interface
;
$TTL    604800
@       IN      SOA     atreides.it11.com. root.atreides.it11.com. (
                        2023111401      ; Serial
                         604800         ; Refresh
                          86400         ; Retry
                        2419200         ; Expire
                         604800 )       ; Negative Cache TTL
;
@       IN      NS      atreides.it11.com.
@       IN      A       10.69.4.3     ; IP Lb Stilgar
www     IN      CNAME   atreides.it11.com.' > /etc/bind/sites/atreides.it11.com

service bind9 restart
```
Setelah menjalankan keduanya. Lakukan pengujian seperti ini pada client.
```
ab -n 5000 -c 150 http://harkonen.it11.com/
```
#### hasil no 7

![image](https://github.com/trdkhardani/Jarkom-Modul-3-IT11-2024/assets/115559151/1932375d-86c7-4951-aaf1-f13d1d235541)

### Nomor 8 (link report: [link](https://docs.google.com/document/d/1wMelXEbm-rLmtxXY8WHAmzTNEIVmZdChyM3_uTNQoYs/edit))
#### script no 8
Masukkan code ini pada stilgar dan uncomment untuk menguji algoritma yang di inginkan
```
echo ' upstream worker_round {
	#least_conn;
	#ip_hash;
    server 10.69.1.3;
    server 10.69.1.4;
    server 10.69.1.5;
}

server {
    listen 80;
    server_name harkonen.it11.com www.harkonen.it11.com;

    root /var/www/html;

    index index.html index.htm index.nginx-debian.html;

    server_name _;

    location / {
        proxy_pass http://worker_round;
    }
} ' > /etc/nginx/sites-available/lb_php

rm -f /etc/nginx/sites-enabled/lb_php
ln -s /etc/nginx/sites-available/lb_php /etc/nginx/sites-enabled/

service nginx restart
```

Pada Dmitri lakukan pengujian pada tiap algoritmanya seperti ini
```
ab -n 500 -c 50 http://harkonen.it11.com/ > round_robin.txt
ab -n 500 -c 50 http://harkonen.it11.com/ > least_connection.txt
ab -n 500 -c 50 http://harkonen.it11.com/ > ip_hash.txt
```

Ambil hasil tiap report dari semua algoritma menggunakan ini
```
echo '[
  {"algorithm": "Round Robin", "req_per_sec": '$(grep "Requests per second" round_robin.txt | awk '{print $4}')'},
  {"algorithm": "Least-Connection", "req_per_sec": '$(grep "Requests per second" least_connection.txt | awk '{print $4}')'},
  {"algorithm": "IP Hash", "req_per_sec": '$(grep "Requests per second" ip_hash.txt | awk '{print $4}')'}
]' > lb_results.json

cat  lb_results.json
```
#### Hasil no 8

![image](https://github.com/trdkhardani/Jarkom-Modul-3-IT11-2024/assets/115559151/0f3453fd-5612-424a-906d-dc68969d028e)

![image](https://github.com/trdkhardani/Jarkom-Modul-3-IT11-2024/assets/115559151/8d7001e2-6475-4be0-b33f-c30dbcaea011)


### Nomor 9
#### script no 9
untuk melakukan pengujian dengan jumlah worker yang berbeda lakukan comment pada setiap worker, seperti ini pada stilgar
```
echo ' upstream worker_least {
	least_conn;
       #server 10.69.1.3;
       server 10.69.1.4;
       server 10.69.1.5;
}

server {
    listen 80;
    server_name harkonen.it11.com www.harkonen.it11.com;

    root /var/www/html;

    index index.html index.htm index.nginx-debian.html;

    server_name _;

    location / {
        proxy_pass http://worker_least;
    }
} ' > /etc/nginx/sites-available/lb_php

rm -f /etc/nginx/sites-enabled/lb_php
ln -s /etc/nginx/sites-available/lb_php /etc/nginx/sites-enabled/

service nginx restart
```
Dan lakukan pengujian seperti ini di client
```
//3 worker
ab -n 1000 -c 10 http://www.harkonen.it11.com/ > 3worker.txt
//2 worker
ab -n 1000 -c 10 http://www.harkonen.it11.com/ > 2worker.txt
//1 worker
ab -n 1000 -c 10 http://www.harkonen.it11.com/ > 1worker.txt
```
Hasilnya di catat dengan menggunakan ini
```
echo '[
  {"worker": "3 worker", "req_per_sec": '$(grep "Requests per second" 3worker.txt | awk '{print $4}')'},
  {"worker": "2 worker", "req_per_sec": '$(grep "Requests per second" 2worker.txt | awk '{print $4}')'},
  {"worker": "1 worker", "req_per_sec": '$(grep "Requests per second" 1worker.txt | awk '{print $4}')'}
]' > lb_worker_results.json

cat  lb_worker_results.json
```

#### Hasil no 9

![image](https://github.com/trdkhardani/Jarkom-Modul-3-IT11-2024/assets/115559151/b72e0b41-d15f-4b84-9b95-9828fd0f652a)

![image](https://github.com/trdkhardani/Jarkom-Modul-3-IT11-2024/assets/115559151/efce4a79-512e-47c8-a7eb-ae9bddfb2597)

### Nomor 10
#### script no 10
Lakukan ini pada stilgar dan jalankan
```
echo 'REMINDER : masukkan password kcksit11'
mkdir /etc/nginx/supersecret/
htpasswd -c /etc/nginx/supersecret/htpasswd secmart

echo '
upstream worker_round_robin {
    server 10.69.1.3;
    server 10.69.1.4;
    server 10.69.1.5;
}

server {
    listen 80;
    server_name harkonen.it11.com www.harkonen.it11.com;

    root /var/www/html;

    index index.html index.htm index.nginx-debian.html;

    location / {
        proxy_pass http://worker_round_robin;
    }

    auth_basic "Restricted Content";
    auth_basic_user_file /etc/nginx/supersecret/htpasswd;
}' > /etc/nginx/sites-available/lb_php
```
#### Hasil no 10
Dengan melakukan `lynx http://harkonen.it11.com/`

![image](https://github.com/trdkhardani/Jarkom-Modul-3-IT11-2024/assets/115559151/fd324014-687b-45b7-9a3d-48f44f4453dc)

### Nomor 11
#### script no 11
Lakukan ini pada stilgar
```
echo '
upstream worker-dune {
    server 10.69.1.3;
    server 10.69.1.4;
    server 10.69.1.5;
}

server {
    listen 80;
    server_name harkonen.it11.com www.harkonen.it11.com;

    root /var/www/html;
    index index.html index.htm index.nginx-debian.html;

    location / {
        proxy_pass http://worker-dune;
    }

    location /dune {
        proxy_pass https://www.dunemovie.com.au/;
        proxy_set_header Host www.dunemovie.com.au;
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto $scheme;
    }

    auth_basic "Restricted Content";
    auth_basic_user_file /etc/nginx/supersecret/htpasswd;
}' > /etc/nginx/sites-available/lb_php


rm -f /etc/nginx/sites-enabled/lb_php
ln -s /etc/nginx/sites-available/lb_php /etc/nginx/sites-enabled/

service nginx restart
```
#### Hasil no 11
Didapatkan Hasil seperti ini

![image](https://github.com/trdkhardani/Jarkom-Modul-3-IT11-2024/assets/115559151/fa0bc2e9-e963-48db-ab53-00c873859f41)


### Nomor 12
#### script no 12
Jalankan ini pada stilgar
```
echo '
upstream worker-dune {
    server 10.69.1.3;
    server 10.69.1.4;
    server 10.69.1.5;
}

server {
    listen 80;
    server_name harkonen.it11.com www.harkonen.it11.com;

    root /var/www/html;
    index index.html index.htm index.nginx-debian.html;

    location / {
        allow 10.69.1.37;
        allow 10.69.1.67;
        allow 10.69.2.203;
        allow 10.69.2.207;
        deny all;
        proxy_pass http://worker-dune;
    }

    location /dune {
        proxy_pass https://www.dunemovie.com.au/;
        proxy_set_header Host www.dunemovie.com.au;
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto $scheme;
    }

    auth_basic "Restricted Content";
    auth_basic_user_file /etc/nginx/supersecret/htpasswd;
}' > /etc/nginx/sites-available/lb_php


rm -f /etc/nginx/sites-enabled/lb_php
ln -s /etc/nginx/sites-available/lb_php /etc/nginx/sites-enabled/

service nginx restart

```
#### Hasil no 12
Jalankan `lynx http://harkonen.it11.com/` di dmitri
![image](https://github.com/trdkhardani/Jarkom-Modul-3-IT11-2024/assets/115559151/1e2d5cc9-3e6e-4e15-a280-02040d69d9cf)

### Nomor 13
Semua data yang diperlukan, diatur pada Chani dan harus dapat diakses oleh Leto, Duncan, dan Jessica.

#### Script (Chani)
```bash
echo '# This group is read both by the client and the server
# use it for options that affect everything
[client-server]

# Import all .cnf files from configuration directory
!includedir /etc/mysql/conf.d/
!includedir /etc/mysql/mariadb.conf.d/

# Options affecting the MySQL server (mysqld)
[mysqld]
skip-networking=0
skip-bind-address
' > /etc/mysql/my.cnf

echo "REMINDER 1: Ubah [bind-address] pada file /etc/mysql/mariadb.conf.d/50-server.cnf menjadi 0.0.0.0"
echo "REMINDER 2: Jalankan -service mysql restart-"
```
Jalankan ini di Chani (DB) Setelah menjalankan Script tersebut:

```
mysql -u root -p
Enter password: (kosongkan password, langsung enter)

CREATE USER 'it11'@'%' IDENTIFIED BY 'it11';
CREATE USER 'it11'@'localhost' IDENTIFIED BY 'it11';
CREATE DATABASE db_it11;
GRANT ALL PRIVILEGES ON *.* TO 'it11'@'%';
GRANT ALL PRIVILEGES ON *.* TO 'it11'@'localhost';
FLUSH PRIVILEGES;
```

Setelah itu, jalankan ini pada semua Laravel Workers untuk memeriksa koneksi ke database:


```bash
mariadb --host=10.69.4.2 --port=3306 --user=it11 --password=it11 db_it11 -e "SHOW DATABASES;"
```

#### Hasil
Screenshot di bawah ini merupakan hasil dari menjalankan script di atas.

#### Leto
![no13-Leto](/images/no13-Leto.png)

#### Duncan
![no13-Duncan](/images/no13-Duncan.png)

#### Jessica
![no13-Jessica](/images/no13-Jessica.png)

### Nomor 14
Leto, Duncan, dan Jessica memiliki atreides Channel sesuai dengan [quest guide](https://github.com/martuafernando/laravel-praktikum-jarkom) berikut. Jangan lupa melakukan instalasi PHP8.0 dan Composer (14)

#### Script (Laravel Workers - Leto, Duncan, Jessica)
```bash
# Instalasi Composer
cd ~
wget https://getcomposer.org/download/2.0.13/composer.phar
chmod +x composer.phar
mv composer.phar /usr/local/bin/composer

# Instalasi Git dan Clone Repository https://github.com/martuafernando/laravel-praktikum-jarkom (quest guide)
apt-get install git -y
cd /var/www && git clone https://github.com/martuafernando/laravel-praktikum-jarkom
cd /var/www/laravel-praktikum-jarkom && composer update

# Setting .env Laravel
cd /var/www/laravel-praktikum-jarkom && cp .env.example .env
echo 'APP_NAME=Laravel
APP_ENV=local
APP_KEY=
APP_DEBUG=true
APP_URL=http://localhost

LOG_CHANNEL=stack
LOG_DEPRECATIONS_CHANNEL=null
LOG_LEVEL=debug

DB_CONNECTION=mysql
DB_HOST=10.69.4.2
DB_PORT=3306
DB_DATABASE=db_it11
DB_USERNAME=it11
DB_PASSWORD=it11

BROADCAST_DRIVER=log
CACHE_DRIVER=file
FILESYSTEM_DISK=local
QUEUE_CONNECTION=sync
SESSION_DRIVER=file
SESSION_LIFETIME=120

MEMCACHED_HOST=127.0.0.1

REDIS_HOST=127.0.0.1
REDIS_PASSWORD=null
REDIS_PORT=6379

MAIL_MAILER=smtp
MAIL_HOST=mailpit
MAIL_PORT=1025
MAIL_USERNAME=null
MAIL_PASSWORD=null
MAIL_ENCRYPTION=null
MAIL_FROM_ADDRESS="hello@example.com"
MAIL_FROM_NAME="${APP_NAME}"

AWS_ACCESS_KEY_ID=
AWS_SECRET_ACCESS_KEY=
AWS_DEFAULT_REGION=us-east-1
AWS_BUCKET=
AWS_USE_PATH_STYLE_ENDPOINT=false

PUSHER_APP_ID=
PUSHER_APP_KEY=
PUSHER_APP_SECRET=
PUSHER_HOST=
PUSHER_PORT=443
PUSHER_SCHEME=https
PUSHER_APP_CLUSTER=mt1

VITE_PUSHER_APP_KEY="${PUSHER_APP_KEY}"
VITE_PUSHER_HOST="${PUSHER_HOST}"
VITE_PUSHER_PORT="${PUSHER_PORT}"
VITE_PUSHER_SCHEME="${PUSHER_SCHEME}"
VITE_PUSHER_APP_CLUSTER="${PUSHER_APP_CLUSTER}"' > /var/www/laravel-praktikum-jarkom/.env
cd /var/www/laravel-praktikum-jarkom && php artisan key:generate
cd /var/www/laravel-praktikum-jarkom && php artisan config:cache
cd /var/www/laravel-praktikum-jarkom && php artisan migrate
cd /var/www/laravel-praktikum-jarkom && php artisan db:seed
cd /var/www/laravel-praktikum-jarkom && php artisan storage:link
cd /var/www/laravel-praktikum-jarkom && php artisan jwt:secret
cd /var/www/laravel-praktikum-jarkom && php artisan config:clear
chown -R www-data.www-data /var/www/laravel-praktikum-jarkom/storage

# Konfigurasi Nginx
echo 'server {
    # listen 8001; # Leto
    # listen 8002; # Duncan
    # listen 8003; # Jessica

    root /var/www/laravel-praktikum-jarkom/public;

    index index.php index.html index.htm;
    server_name _;

    location / {
            try_files $uri $uri/ /index.php?$query_string;
    }

    # pass PHP scripts to FastCGI server
    location ~ \.php$ {
      include snippets/fastcgi-php.conf;
      fastcgi_pass unix:/var/run/php/php8.0-fpm.sock;
    }

    location ~ /\.ht {
            deny all;
    }

    error_log /var/log/nginx/laravel-worker_error.log;
    access_log /var/log/nginx/laravel-worker_access.log;
}' > /etc/nginx/sites-available/laravel-worker

ln -s /etc/nginx/sites-available/laravel-worker /etc/nginx/sites-enabled/
rm -rf /etc/nginx/sites-enabled/default

service nginx restart
```

#### Hasil
Screenshot di bawah ini merupakan hasil dari menjalankan script di atas dan menjalankan ```lynx 10.69.2.3:8001``` (**web server Leto**) dari Client.
![no14](/images/no14.png)

### Nomor 15
atreides Channel memiliki beberapa endpoint yang harus ditesting sebanyak 100 request dengan 10 request/second. Tambahkan response dan hasil testing pada peta. ```POST /auth/register```.

#### Script (Client)
```bash
echo '
{
  "username": "it11",
  "password": "it11haha"
}' > register.json

ab -n 100 -c 10 -p register.json -T application/json http://10.69.2.3:8001/api/auth/register
```

#### Hasil
Screenshot di bawah ini merupakan hasil dari menjalankan script di atas.

![no15](/images/no15.png)

Request yang berhasil hanya satu karena username itu bersifat unique pada database **db_it11**, tabel **users** dan juga validasi dari **endpoint API** ```/api/auth/register``` yang mengharuskan username itu bersifat unique, sedangkan file **register.json** hanya dijalankan secara statis selama 100 kali.

### Nomor 16
atreides Channel memiliki beberapa endpoint yang harus ditesting sebanyak 100 request dengan 10 request/second. Tambahkan response dan hasil testing pada peta. ```POST /auth/login```

#### Script (Client)
```bash
echo '
{
  "username": "it11",
  "password": "it11haha"
}' > login.json

ab -n 100 -c 10 -p login.json -T application/json http://10.69.2.3:8001/api/auth/login
```

#### Hasil
Screenshot di bawah ini merupakan hasil dari menjalankan script di atas.

![no16](/images/no16.png)

### Nomor 17
atreides Channel memiliki beberapa endpoint yang harus ditesting sebanyak 100 request dengan 10 request/second. Tambahkan response dan hasil testing pada peta. ```GET /me```

#### Script (Client)
```bash
# Mendapatkan Token
curl -X POST -H "Content-Type: application/json" -d @login.json http://10.69.2.3:8001/api/auth/login > login_token.txt

# Declare token sebagai global variable
token=$(cat login_token.txt | jq -r '.token')

# Menjalankan Apache Benchmark
ab -n 100 -c 10 -H "Authorization: Bearer $token" http://10.69.2.3:8001/api/me
```

#### Hasil
Screenshot di bawah ini merupakan hasil dari menjalankan script di atas.

![no17](/images/no17.png)

### Nomor 18
Untuk memastikan ketiganya bekerja sama secara adil untuk mengatur atreides Channel maka implementasikan Proxy Bind pada Stilgar untuk mengaitkan IP dari Leto, Duncan, dan Jessica.

#### Script (Irulan)
```bash
echo ';
; BIND data file for local loopback interface
;
$TTL    604800
@       IN      SOA     atreides.it11.com. root.atreides.it11.com. (
                        2023111401      ; Serial
                         604800         ; Refresh
                          86400         ; Retry
                        2419200         ; Expire
                         604800 )       ; Negative Cache TTL
;
@       IN      NS      atreides.it11.com.
@       IN      A       10.69.4.3     ; IP Stilgar
www     IN      CNAME   atreides.it11.com.' > /etc/bind/sites/atreides.it11.com

service bind9 restart
```

#### Script (Stilgar)
```bash
echo 'upstream worker {
    server 10.69.2.3:8001;
    server 10.69.2.4:8002;
    server 10.69.2.5:8003;
}

server {
    listen 80;
    server_name atreides.it11.com www.atreides.it11.com;

    location / {
        proxy_pass http://worker;
    }
}
' > /etc/nginx/sites-available/laravel-lb

ln -s /etc/nginx/sites-available/laravel-lb /etc/nginx/sites-enabled/laravel-lb
rm -rf /etc/nginx/sites-enabled/default

service nginx restart
```
Setelah menjalankan kedua script di atas, jalankan apache benchmark dari Client.

```ab -n 100 -c 10 -p login.json -T application/json http://atreides.it11.com/api/auth/login```

#### Hasil
Screenshot di bawah ini merupakan hasil dari menjalankan script di atas.

![no18](/images/no18.png)

### Nomor 19
Untuk meningkatkan performa dari Worker, coba implementasikan PHP-FPM pada Leto, Duncan, dan Jessica. Untuk testing kinerja naikkan:
* pm.max_children
* pm.start_servers
* pm.min_spare_servers
* pm.max_spare_servers

sebanyak tiga percobaan dan lakukan testing sebanyak 100 request dengan 10 request/second kemudian berikan hasil analisisnya pada PDF.

#### Script 1 (Laravel Workers - Leto, Duncan, Jessica)
```bash
echo '[www]
user = www-data
group = www-data
listen = /run/php/php8.0-fpm.sock
listen.owner = www-data
listen.group = www-data
php_admin_value[disable_functions] = exec,passthru,shell_exec,system
php_admin_flag[allow_url_fopen] = off

; Choose how the process manager will control the number of child processes.

pm = dynamic
pm.max_children = 6
pm.start_servers = 4
pm.min_spare_servers = 2
pm.max_spare_servers = 4' > /etc/php/8.0/fpm/pool.d/www.conf

service php8.0-fpm restart
```

#### Script 2 (Laravel Workers - Leto, Duncan, Jessica)
```bash
echo '[www]
user = www-data
group = www-data
listen = /run/php/php8.0-fpm.sock
listen.owner = www-data
listen.group = www-data
php_admin_value[disable_functions] = exec,passthru,shell_exec,system
php_admin_flag[allow_url_fopen] = off

; Choose how the process manager will control the number of child processes.

pm = dynamic
pm.max_children = 8
pm.start_servers = 6
pm.min_spare_servers = 4
pm.max_spare_servers = 7' > /etc/php/8.0/fpm/pool.d/www.conf

service php8.0-fpm restart
```

#### Script 3 (Laravel Workers - Leto, Duncan, Jessica)
```bash
echo '[www]
user = www-data
group = www-data
listen = /run/php/php8.0-fpm.sock
listen.owner = www-data
listen.group = www-data
php_admin_value[disable_functions] = exec,passthru,shell_exec,system
php_admin_flag[allow_url_fopen] = off

; Choose how the process manager will control the number of child processes.

pm = dynamic
pm.max_children = 11
pm.start_servers = 9
pm.min_spare_servers = 6
pm.max_spare_servers = 10' > /etc/php/8.0/fpm/pool.d/www.conf

service php8.0-fpm restart
```

#### Script 4 (Laravel Workers - Leto, Duncan, Jessica)
```bash
echo '[www]
user = www-data
group = www-data
listen = /run/php/php8.0-fpm.sock
listen.owner = www-data
listen.group = www-data
php_admin_value[disable_functions] = exec,passthru,shell_exec,system
php_admin_flag[allow_url_fopen] = off

; Choose how the process manager will control the number of child processes.

pm = dynamic
pm.max_children = 15
pm.start_servers = 13
pm.min_spare_servers = 10
pm.max_spare_servers = 14' > /etc/php/8.0/fpm/pool.d/www.conf

service php8.0-fpm restart
```
Setelah menjalankan keempat script di atas secara berurutan dari Script 1 untuk masing-masing Laravel Workers, jalankan apache benchmark dari Client.

```ab -n 100 -c 10 -p login.json -T application/json http://atreides.it11.com/api/auth/login```

#### Hasil (Script 1)
Screenshot di bawah ini merupakan hasil dari menjalankan Script 1.

![no19-script1](/images/no19-script1.png)

#### Hasil (Script 2)
Screenshot di bawah ini merupakan hasil dari menjalankan Script 2.

![no19-script2](/images/no19-script2.png)

#### Hasil (Script 3)
Screenshot di bawah ini merupakan hasil dari menjalankan Script 3.

![no19-script3](/images/no19-script3.png)

#### Hasil (Script 4)
Screenshot di bawah ini merupakan hasil dari menjalankan Script 4.

![no19-script4](/images/no19-script4.png)

#### Analisis
Berdasarkan hasil benchmark dari testing keempat script untuk masing-masing workers, didapati bahwa semakin tinggi nilai yang diberikan untuk masing-masing ```pm.max_children```, ```pm.start_servers```, ```pm.min_spare_servers```, dan ```pm.max_spare_servers``` maka semakin cepat suatu request akan diproses oleh workers.

### Nomor 20
Nampaknya hanya menggunakan PHP-FPM tidak cukup untuk meningkatkan performa dari worker maka implementasikan Least-Conn pada Stilgar. Untuk testing kinerja dari worker tersebut dilakukan sebanyak 100 request dengan 10 request/second.

#### Script (Stilgar)
```bash
echo 'upstream worker {
    least_conn;
    server 10.69.2.3:8001;
    server 10.69.2.4:8002;
    server 10.69.2.5:8003;
}

server {
    listen 80;
    server_name atreides.it11.com www.atreides.it11.com;

    location / {
        proxy_pass http://worker;
    }
}
' > /etc/nginx/sites-available/laravel-lb

service nginx restart
```
Setelah menjalankan script di atas, jalankan apache benchmark dari Client.

```ab -n 100 -c 10 -p login.json -T application/json http://atreides.it11.com/api/auth/login```

#### Hasil
Screenshot di bawah ini merupakan hasil dari menjalankan script di atas.

![no20](/images/no20.png)
