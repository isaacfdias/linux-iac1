#!/bin/bash

echo "Criando Diretorios!.."

mkdir /publico
mkdir /adm
mkdir /sec
mkdir /ven

echo "Criando grupos de usuários!..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuarios!..."

useradd carlos -m -s /bin/bash -p $(openssl passwd -6 senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -6 senha123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -6 senha123) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -6 senha123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -6 senha123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -6 senha123) -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd -6 senha123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -6 senha123)	-G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -6 senha123) -G GRP_SEC

echo "Criando permissões em diretorios!..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Processo finalizado!..."
