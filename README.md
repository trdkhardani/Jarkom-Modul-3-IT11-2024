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
		- [Nomor 0 \& 1](#nomor-0--1)
		- [Nomor 2](#nomor-2)
		- [Nomor 3](#nomor-3)
		- [Nomor 4](#nomor-4)
		- [Nomor 5](#nomor-5)
		- [Nomor 6](#nomor-6)
		- [Nomor 7](#nomor-7)
		- [Nomor 8](#nomor-8)
		- [Nomor 9](#nomor-9)
		- [Nomor 10](#nomor-10)
		- [Nomor 11](#nomor-11)
		- [Nomor 12](#nomor-12)
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
### Nomor 2
### Nomor 3
### Nomor 4
### Nomor 5
### Nomor 6
### Nomor 7
### Nomor 8
### Nomor 9
### Nomor 10
### Nomor 11
### Nomor 12

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