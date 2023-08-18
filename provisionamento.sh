#!/bin/bash

# Criação dos diretórios
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

# Criação dos grupos
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

# Criação dos usuários e atribuição aos grupos
useradd carlos -G GRP_ADM
useradd maria -G GRP_ADM
useradd joao -G GRP_ADM

useradd debora -G GRP_VEN
useradd sebastiana -G GRP_VEN
useradd roberto -G GRP_VEN

useradd josefina -G GRP_SEC
useradd amanda -G GRP_SEC
useradd rogerio -G GRP_SEC

# Definição das permissões
chown root:root /publico
chmod 777 /publico

chown root:GRP_ADM /adm
chmod 770 /adm

chown root:GRP_VEN /ven
chmod 770 /ven

chown root:GRP_SEC /sec
chmod 770 /sec
