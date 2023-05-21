#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."



useradd usuario01 -c "Usuário01" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_ADM
useradd usuario02 -c "Usuário02" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_ADM
useradd usuario03 -c "Usuário03" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_ADM

useradd usuario04 -c "Usuário04" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_VEN
useradd usuario05 -c "Usuário05" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_VEN
useradd usuario06 -c "Usuário06" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_VEN

useradd usuario07 -c "Usuário07" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_SEC
useradd usuario08 -c "Usuário08" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_SEC
useradd usuario09 -c "Usuário09" -s /bin/bash -m -p $(openssl passwd senah123) -G GRP_SEC


echo "Especificando permissões dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim ..... "


