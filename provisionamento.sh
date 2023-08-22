#!/bin/bash

echo "Criação dos diretórios"

sudo mkdir /publico
sudo mkdir /adm
sudo mkdir /ven
sudo mkdir /sec

echo "Criação dos grupos"

sudo groupadd GRP_ADM
sudo groupadd GRP_VEN
sudo groupadd GRP_SEC

echo "Criação dos usuários e atribuição aos grupos"

sudo useradd carlos -c "Carlos da Silva" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
sudo useradd maria -c "Maria da Silva" -m -s /bin/bash -p $(openssl passwd Senha123)G GRP_ADM
sudo useradd joao -c "João da Silva" -m -s /bin/bash -p $(openssl passwd Senha123)-G GRP_ADM

useradd debora -c "Debora da Silva" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
useradd sebastiana -c "Sebastiana da Silva" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
useradd roberto -c "Roberto da Silva" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN

useradd josefina -c "Josefina da Silva" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
useradd amanda -c "Amanda da Silva" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
useradd rogerio -c "Rogerio da Silva" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC

echo "Definição das permissões"

chown root:root /publico
chmod 777 /publico

chown root:GRP_ADM /adm
chmod 770 /adm

chown root:GRP_VEN /ven
chmod 770 /ven

chown root:GRP_SEC /sec
chmod 770 /sec
