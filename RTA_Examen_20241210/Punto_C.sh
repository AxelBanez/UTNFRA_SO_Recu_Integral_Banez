

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
