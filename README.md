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
	- [IP ADDRESS](#ip-address)
	- [JAWABAN](#jawaban)
		- [nomer 0 \& 1](#nomer-0--1)
		- [nomer 2](#nomer-2)
		- [nomer 3](#nomer-3)
		- [nomer 4](#nomer-4)
		- [nomer 5](#nomer-5)
		- [nomer 6](#nomer-6)
		- [nomer 7](#nomer-7)
		- [nomer 8](#nomer-8)
		- [nomer 9](#nomer-9)
		- [nomer 10](#nomer-10)
		- [nomer 11](#nomer-11)
		- [nomer 12](#nomer-12)
		- [nomer 13](#nomer-13)
			- [Script (Chani)](#script-chani)
			- [Hasil](#hasil)
			- [Leto](#leto)
			- [Duncan](#duncan)
			- [Jessica](#jessica)
		- [nomer 14](#nomer-14)
			- [Script (Laravel Workers - Leto, Duncan, Jessica)](#script-laravel-workers---leto-duncan-jessica)
			- [Hasil](#hasil-1)
		- [nomer 15](#nomer-15)
			- [Script (Client)](#script-client)
			- [Hasil](#hasil-2)
		- [nomer 16](#nomer-16)
			- [Script (Client)](#script-client-1)
			- [Hasil](#hasil-3)
		- [nomer 17](#nomer-17)
		- [nomer 18](#nomer-18)
		- [nomer 19](#nomer-19)
		- [nomer 20](#nomer-20)

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
### nomer 0 & 1
### nomer 2
### nomer 3
### nomer 4
### nomer 5
### nomer 6
### nomer 7
### nomer 8
### nomer 9
### nomer 10
### nomer 11
### nomer 12

### nomer 13
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

### nomer 14
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

### nomer 15
atreides Channel memiliki beberapa endpoint yang harus ditesting sebanyak 100 request dengan 10 request/second. Tambahkan response dan hasil testing pada peta. POST /auth/register.

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

### nomer 16
atreides Channel memiliki beberapa endpoint yang harus ditesting sebanyak 100 request dengan 10 request/second. Tambahkan response dan hasil testing pada peta. POST /auth/login

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

### nomer 17
### nomer 18
### nomer 19
### nomer 20
