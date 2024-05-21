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
		- [nomer 15](#nomer-15)
		- [nomer 16](#nomer-16)
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
### nomer 15
### nomer 16
### nomer 17
### nomer 18
### nomer 19
### nomer 20
