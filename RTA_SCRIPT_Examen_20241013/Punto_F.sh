#!/bin/bash
CARPETA="../RTA_ARCHIVOS_Examen_20241013"
ARCHIVO="$CARPETA/Filtro_Avanzado.txt"

IP_PUBLICA=$(curl -s ifconfig.me)
USUARIO=$(whoami)
HASH_USUARIO=$(sudo awk -F: '/^vagrant/ {print $0}' /etc/shadow | awk -F: '{print $2}')
REPO_URL=$(git -C /home/vagrant/repogit/UTNFRA_SO_1P2C_2024_Magaldi/ remote get-url origin)

echo "Mi IP Publica es: $IP_PUBLICA" > $ARCHIVO
echo "Mi usuario es: $USUARIO" >> $ARCHIVO
echo "El Hash de mi Usuario es: $HASH_USUARIO" >> $ARCHIVO
echo "La URL de mi repositorio es: $REPO_URL" >> $ARCHIVO
