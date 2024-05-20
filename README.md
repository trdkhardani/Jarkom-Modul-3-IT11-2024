# Jarkom-Modul-3-IT11-2024

## Kelompok IT11
| NRP | Nama |
| ------ | ------ |
| 5027211049 | Tridiktya Hardani Putra |
| 5027221008 | Jeany Aurellia Putri Dewati |


## DAFTAR ISI
- [TOPOLOGI](#topologi)
- [KONFIGURASI](#konfigurasi)
- [IP ADDRESS](#ip-address)
- [nomer 0 & 1](#nomer-0-&-1)
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
- [nomer 14](#nomer-14)
- [nomer 15](#nomer-15)
- [nomer 16](#nomer-16)
- [nomer 17](#nomer-17)
- [nomer 18](#nomer-18)
- [nomer 19](#nomer-19)
- [nomer 20](#nomer-20)

## TOPOLOGI
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
### nomer 14
### nomer 15
### nomer 16
### nomer 17
### nomer 18
### nomer 19
### nomer 20
