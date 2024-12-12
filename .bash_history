git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
pwd
ls
ll
./UTN-FRA_SO_Examenes/202408/script_Precondicion.sh
source  ~/.bashrc  && history -a
ll
ls
sudo apt install wget gpg
UBUNTU_CODENAME=jammy
wget -O- "https://keyserver.ubuntu.com/pks/lookup?fingerprint=on&op=get&search=0x6125E2A8C77F2818FB7BD15B93C4A3FD7BB9C367" | sudo gpg --dearmour -o /usr/share/keyrings/ansible-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/ansible-archive-keyring.gpg] http://ppa.launchpad.net/ansible/ansible/ubuntu $UBUNTU_CODENAME main" | sudo tee /etc/apt/sources.list.d/ansible.list
sudo apt update && sudo apt install ansible
# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
cat /etc/apt/sources.list.d/docker.list
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
apt-cache policy docker-ce
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
docker --version
sudo docker run hello-world
pwd
ls
cd RTA_Examen_20241210/
ls
cat Punto_A.sh 
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
pwd
ls
cd RTA_Examen_20241210/
ls
cat Punto_A.sh 
cd
cd UTN-FRA_SO_Examenes/202408/bash_script/
ls
cat Lista_URL.txt 
cd /usr/local/bin
ls
sudo vim Banez_check_URL.sh
ls
sudo chmod +x Banez_check_URL.sh 
ls
./Banez_check_URL.sh /home/abanez/UTN-FRA_SO_Examenes/202408/bash_script/Lista_URL.txt 
cat &LISTA
ls
cat Banez_check_URL.sh 
sudo vim Banez_check_URL.sh 
./Banez_check_URL.sh /home/abanez/UTN-FRA_SO_Examenes/202408/bash_script/Lista_URL.txt 
sudo vim Banez_check_URL.sh 
./Banez_check_URL.sh /home/abanez/UTN-FRA_SO_Examenes/202408/bash_script/Lista_URL.txt 
sudo vim Banez_check_URL.sh 
./Banez_check_URL.sh /home/abanez/UTN-FRA_SO_Examenes/202408/bash_script/Lista_URL.txt 
sudo vim Banez_check_URL.sh 
./Banez_check_URL.sh /home/abanez/UTN-FRA_SO_Examenes/202408/bash_script/Lista_URL.txt 
cat /home/abanez/UTN-FRA_SO_Examenes/202408/bash_script/Lista_URL.tx
sort Lista_URL.txt | uniq
ls
cat Banez_check_URL.sh 
sudo vim Banez_check_URL.sh 
./Banez_check_URL.sh /home/abanez/UTN-FRA_SO_Examenes/202408/bash_script/Lista_URL.txt 
sudo vim Banez_check_URL.sh 
./Banez_check_URL.sh /home/abanez/UTN-FRA_SO_Examenes/202408/bash_script/Lista_URL.txt 
sudo vim Banez_check_URL.sh 
./Banez_check_URL.sh /home/abanez/UTN-FRA_SO_Examenes/202408/bash_script/Lista_URL.txt 
sudo vim Banez_check_URL.sh 
./Banez_check_URL.sh /home/abanez/UTN-FRA_SO_Examenes/202408/bash_script/Lista_URL.txt 
cat /var/log/status_URL.log
ls
cat Banez_check_URL.sh 
pwd
cd
pwd
ls
cd UTN-FRA_SO_Examenes/202408/bash_script/
ls
cat Lista_URL.txt 
cd /usr/local/bin/
ls
cat Banez_check_URL.sh 
sudo vim Banez_check_URL.sh 
./Banez_check_URL.sh /home/abanez/UTN-FRA_SO_Examenes/202408/bash_script/Lista_URL.txt 
sudo vim Banez_check_URL.sh 
ls
ls -la
./Banez_check_URL.sh /home/abanez/UTN-FRA_SO_Examenes/202408/bash_script/Lista_URL.txt 
sudo vim Banez_check_URL.sh 
./Banez_check_URL.sh /home/abanez/UTN-FRA_SO_Examenes/202408/bash_script/Lista_URL.txt 
sudo vim Banez_check_URL.sh 
./Banez_check_URL.sh /home/abanez/UTN-FRA_SO_Examenes/202408/bash_script/Lista_URL.txt 
sudo vim Banez_check_URL.sh 
./Banez_check_URL.sh /home/abanez/UTN-FRA_SO_Examenes/202408/bash_script/Lista_URL.txt 
sudo chmod +x Banez_check_URL.sh
LS -LA
ls -la
./Banez_check_URL.sh /home/abanez/UTN-FRA_SO_Examenes/202408/bash_script/Lista_URL.txt 
ls
ls -la
cd /tmp/head_check/
ls
ls -la
cat Error/
cd Error/
ls
cat cliente/
ls
cd cliente/
ls
cd /tmp/head_check/
ls
cd ok
ls
ls -la
cat google.log 
ls -la
cat httpbin.log 
cd
pwd
ls
cd RTA_Examen_20241210/
ls
ls -l
history 
ls
history 
ls
cd Punto_A.sh
cat Punto_A.sh 
history -a
sudo vim texto_comandos.txt
ls
cat texto_comandos.txt 
cat Punto_A.sh 
sudo vim Punto_A.sh
ls
cat Punto_A.sh 
sudo vim Punto_A.sh
ls
sudo vim Punto_A.sh
ls
cat Punto_A.sh 
ls
rm texto_comandos.txt 
ls
sudo rm texto_comandos.txt 
ls
history 
ls
sudo vim Punto_B.sh
cd
ls
cd UTN-FRA_SO_Examenes/202408/bash_script/
ls
cat Lista_URL.txt 
cd /usr/local/bin/
ls
cat Banez_check_URL.sh 
cd
cd RTA_Examen_20241210/
ls
cat Punto_B.sh 
sudo vim Punto_B.sh 
ls
cat Punto_B.sh 
sudo vim Punto_B.sh 
cd /home/abanez/UTN-FRA_SO_Examenes/202408/docker/
ls
cd web/
ls
vim index.html 
cd ..
ls
vim dockerfile 
ls
vim dockerfile 
ls
cat dockerfile 
docker build -t banezaxel/web3_RI2024-banez .
sudo usermod -aG docker abanez 
su abanez
su - abanez
su vagrant
su abanez
ls
cd UTN-FRA_SO_Examenes/202408/docker/
ls
docker build -t banezaxel/web3_RI2024-banez .
docker build -t banezaxel/web3_ri2024-banez .
sudo fdisk -l
sudo fdisk 
sudo fdisk /dev/sdd
sudo pvcreate /dev/sdd2
sudo vgextend vg_datos /dev/sdd2
sudo lvextend -l +100 /dev/map
sudo lvextend -l +100%FREE /dev/mapper/vg_datos-lv_docker
sudo resize2fs /dev/mapper/vg_datos-lv_docker 
docker build -t banezaxel/web3_ri2024-banez .
docker login -u banezaxel
docker push banezaxel/web3_ri2024-banez
docker login -u banezaxel
docker push banezaxel/web3_ri2024-banez
docker logout
docker login
docker push banezaxel/web3_ri2024-banez
cd web/
ls
cd file/
ls
cat info.txt 
cat /proc/cpuinfo 
cat /proc/cpuinfo | grep "model name"
cat /proc/cpuinfo | grep "model name" | head -n1 | awk -F ':' '{print$2}'
cat /proc/cpuinfo | grep "cpu MHz" | head -n1 | awk -F ':' '{print$2}'
cat << FIN > info.txt 
CPU Modelo: cat /proc/cpuinfo | grep "model name" | head -n1 | aw
FIN

cat info.txt 
cat << FIN > info.txt 
CPU Modelo: $(cat /proc/cpuinfo | grep "model name" | head -n1 | awk -F ':' '{print$2}') Frecuencia: $(cat /proc/cpuinfo | grep "cpu MHz" | head -n1 | awk -F ':' '{print$2}')
FIN

cat info.txt 
cd ../..
ls
vim docker-compose.yml 
cat docker-compose.yml 
docker compose up -d
curl localhost:8081
cd ..
cd ansible/
ls
cd roles/
ls
ll
cat 2PRecuperatorio/
cd 2PRecuperatorio/
ls
cd ..
ls
ansible-galaxy role init Alta_Usuarios_Banez
ll
cd Alta_Usuarios_Banez/
LS
ls
ll
cd ..
ll
ansible-galaxy role init Sudoers_Banez
ansible-galaxy role init Instala-tools_Banez
ll
cd 2PRecuperatorio/
ls
cd tasks/
ls
vim main.yml 
cat main.yml 
cd ../..
ls
cd ..
ls
cat playbook.yml 
vim playbook.yml 
cat playbook.yml 
ls
cd roles/
ls
cd 2PRecuperatorio/
ls
cd tasks/
ls
cat main.yml 
vim main.yml 
cat main.yml 
ls
cd ..
ls
cd Alta_Usuarios_Banez/
ls
cd tasks/
ls
cat main.yml 
vim main.yml 
cat main.yml 
cd ..
ls
cd Sudoers_Banez/
ls
cd tasks/
ls
cat main.yml 
vim main.yml 
ls
cd ..
ls
cd 2PRecuperatorio/
ls
cd tasks/
ls
vim main.yml 
cd ../..
ls
cd Alta_Usuarios_Banez/tasks/
ls
vim main.yml 
cd ../..
ls
cd Instala-tools_Banez/tasks/
ls
cat main.yml 
vim main.yml 
cd ../..
cd
cd UTN-FRA_SO_Examenes/202408/ansible/
ls
ansible-playbook -i inventory/hosts playbook.yml
cd inventory/
ls
cat hosts
ls
cd hosts
cat hosts
cat host_vars/
cd host_vars/
ls
cd .
cd ..
ls
cat hosts
ansible-playbook -i inventory/hosts playbook.yml
cd ..
ls
ansible-playbook -i inventory/hosts playbook.yml
ls
cd roles/
ls
cd 2PRecuperatorio/
cd tasks/
ls
vim main.yml 
cd ..
ls
cd ../..
ls
ansible-playbook -i inventory/hosts playbook.yml
ls
cd roles/
ls
cd Sudoers_Banez/tasks/
ls
vim main.yml 
cd /tmp/
ls
ll
sudo rm alumno/
cd alumno/
ls
cat datos.txt 
cd .
cd ..
ls
sudo rm alumno/
sudo rmdir alumno/
sudo rm -r alumno/
ls
cd
LS
ls
cd UTN-FRA_SO_Examenes/
ls
cd 202408/ansible/
ls
ansible-playbook -i inventory/hosts playbook.yml
ls
sudo visudo
ls
cd roles/l
cd roles/
ls
cd 2PRecuperatorio/tasks/
ls
cat main.yml 
cd ..
ls
cd Alta_Usuarios_Banez/tasks/
ls
cat main.yml 
cd ../..
ls
cd Sudoers_Banez/tasks/
ls
cat main.yml 
cd ../../..
ls
cat playbook.yml 
cd inventory/
ls
cat hosts 
cd ..
ls
ansible-playbook -i inventory/hosts playbook.yml
ls
cd roles/
ls
cd Alta_Usuarios_Banez/
ls
cd tasks/
ls
vim main.yml 
cd ../../..
ls
ansible-playbook -i inventory/hosts playbook.yml
ls
cd roles/Instala-tools_Banez/tasks/
ls
vim main.yml 
cd ../..
cd ..
ls
ansible-playbook -i inventory/hosts playbook.yml
cd /tmp/
ls
cd alumno/
ls
cat datos.txt 
sudo visudo
cd
ls
cd RTA_Examen_20241210/
ls
cat Punto_
cat Punto_A.sh 
ls
cat Punto_B.sh 
history 
ls
vim Punto_B.sh 
vim Punto_C.sh 
cat Punto_C.sh 
history 
ls
cat Punto_C.sh 
cat Punto_D.sh 
ls
vim Punto_D.sh 
ll
cd
ll
git clone https://github.com/AxelBanez/UTNFRA_SO_Recu_Integral_Banez.git
ll
cd UTNFRA_SO_Recu_Integral_Banez/
ls
cp -r ~/UTN-FRA_SO_Examenes/202408/ ~/UTNFRA_SO_Recu_Integral_Banez/
ls
cd 202408/
ls
ll
cd ..
ls
ll
cp -r ~/RTA_Examen_20241210/ ~/UTNFRA_SO_Recu_Integral_Banez/
ls
history -a
ls
