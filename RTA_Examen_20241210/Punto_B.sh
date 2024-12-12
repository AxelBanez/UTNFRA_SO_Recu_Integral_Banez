#!/bin/bash
# Comandos usados para resolver el Punto B:

cd UTN-FRA_SO_Examenes/202408/bash_script/
ls
cat Lista_URL.txt
cd /usr/local/bin
ls
sudo vim Banez_check_URL.sh
ls
# Script creado para resolver el Punto B: 

#!/bin/bash

LISTA=$1

ANT_IFS=$IFS
IFS=$'\n'

sudo mkdir -p /tmp/head_check/ok
sudo mkdir -p /tmp/head_check/Error/cliente
sudo mkdir -p /tmp/head_check/Error/servidor

for LINEA in `cat $LISTA |  grep -v ^#`
do

        DOMINIO=$(echo "$LINEA" | awk -F ';' '{print $1}')
	URL=$(echo "$LINEA" | awk -F ';' '{print $2}')
	STATUS_CODE=$(curl -Ll -o /dev/null -w '%{http_code}\n' -s "$URL")
	TIMESTAMP=$(date '+%Y%m%d_%H%M%S')

	echo "$TIMESTAMP - Code:$STATUS_CODE - URL:$URL" | sudo tee -a /var/log/status_URL.log

	if [[ $STATUS_CODE == 200 ]]; then
		echo "$TIMESTAMP - Code:$STATUS_CODE - URL:$URL" | sudo tee -a /tmp/head_check/ok/"$DOMINIO".log
	elif [[ $STATUS_CODE -ge 400 && $STATUS_CODE -lt 500 ]]; then
		echo "$TIMESTAMP - Code:$STATUS_CODE - URL:$URL" | sudo tee -a /tmp/head_check/Error/cliente/"$DOMINIO".log
	elif [[ $STATUS_CODE -ge 500 && $STATUS_CODE -lt 600 ]]; then
		echo "$TIMESTAMP - Code:$STATUS_CODE - URL:$URL" | sudo tee -a /tmp/head_check/Error/servidor/"$DOMINIO".log
																		       
	fi

done
IFS=$ANT_IFS
# --- Termina el Script ---

# Damos permisos de ejecucion al script.
sudo chmod +x Banez_check_URL.sh
ls
# Ejecutamos Script
./Banez_check_URL.sh /home/abanez/UTN-FRA_SO_Examenes/202408/bash_script/Lista_URL.txt
