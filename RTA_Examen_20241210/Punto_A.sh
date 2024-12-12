#!/bin/bash
# Comandos usados para el Punto A

sudo fdisk -l
sudo fdisk /dev/sdc
sudo fdisk /dev/sde
sudo fdisk /dev/sdd
sudo fdisk -l
sudo pvcreate /dev/sdc1 /dev/sdc2 /dev/sde1 /dev/sdd1
sudo pvcreate /dev/sdc3
sudo pvdisplay
sudo pvremove /dev/sdc2
sudo pvdisplay
sudo vgcreate vd_datos /dev/sde1 /dev/sdc3 /dev/sdd1
sudo vgcreate vg_temp /dev/sdc1
sudo vgs
sudo lvcreate -L +10M vg_datos -n lv_docker
sudo vgrename vd_datos vg_datos
sudo lvcreate -L +10M vg_datos -n lv_docker
sudo lvcreate -l +100%FREE vg_datos -n lv_multimedia
sudo lvs
sudo lvcreate -l +100%FREE vg_temp -n lv_swap
sudo lvs
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_docker
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_multimedia
sudo mkswap /dev/mapper/vg_temp-lv_swap
sudo mkswap /dev/sdc2
cd /var/lib/
ls
sudo mount /dev/mapper/vg_datos-lv_docker docker/
df -h
cd /
ls
sud mkdir Multimedia
sudo mkdir Multimedia
sudo mount /dev/mapper/vg_datos-lv_multimedia Multimedia/
df -h
free -h
sudo swapon /dev/mapper/vg_temp-lv_swap
sudo swapon ev/
sudo swapon /dev/sdc2
free -h
sudo systemctl restart docker
sudo systemctl status docker
free -h
sudo vgs
sudo lvs
df -h
sudo nano /etc/fstab
/etc/fstab
sudo /etc/fstab
sudo mount -a
sudo nano /etc/fstab
pwd
ls
df -h
sudo nano /etc/fstab
df -h
swapon --show




