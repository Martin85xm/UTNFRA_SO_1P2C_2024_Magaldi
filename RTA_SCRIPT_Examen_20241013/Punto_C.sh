#!/bin/bash
# Ejecutar script Punto_A.sh
sudo groupadd p1c2_2024_gAlumno
sudo groupadd p1c2_2024_gProfesores
sudo useradd -d /Examenes-UTN/alumno_1 -G p1c2_2024_gAlumno -s /bin/bash -p "$(sudo grep vagrant /etc/shadow | awk -F ':' '{print $2}')" p1c2_2024_A1
sudo useradd -d /Examenes-UTN/alumno_2 -G p1c2_2024_gAlumno -s /bin/bash -p "$(sudo grep vagrant /etc/shadow | awk -F ':' '{print $2}')" p1c2_2024_A2
sudo useradd -d /Examenes-UTN/alumno_3 -G p1c2_2024_gAlumno -s /bin/bash -p "$(sudo grep vagrant /etc/shadow | awk -F ':' '{print $2}')" p1c2_2024_A3
sudo useradd -d /Examenes-UTN/profesores -G p1c2_2024_gProfesores -s /bin/bash -p "$(sudo grep vagrant /etc/shadow | awk -F ':' '{print $2}')" p1c2_2024_P1

sudo chown p1c2_2024_A1:p1c2_2024_A1 /Examenes-UTN/alumno_1
sudo chmod 750 /Examenes-UTN/alumno_1

sudo chown p1c2_2024_A2:p1c2_2024_A2 /Examenes-UTN/alumno_2
sudo chmod 700 /Examenes-UTN/alumno_2

sudo chown p1c2_2024_A3:p1c2_2024_A3 /Examenes-UTN/alumno_3
sudo chmod 775 /Examenes-UTN/alumno_3

sudo chown p1c2_2024_P1:p1c2_2024_P1 /Examenes-UTN/
sudo chmod 777 /Examenes-UTN/profesores

sudo -u p1c2_2024_A1 bash -c 'whoami > /Examenes-UTN/alumno_1/validar.txt'
sudo -u p1c2_2024_A2 bash -c 'whoami > /Examenes-UTN/alumno_2/validar.txt'
sudo -u p1c2_2024_A3 bash -c 'whoami > /Examenes-UTN/alumno_3/validar.txt'
sudo -u p1c2_2024_P1 bash -c 'whoami > /Examenes-UTN/profesores/validar.txt'
