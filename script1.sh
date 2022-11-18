#!/bin/bash

echo "Criando diretórios do sistema..."
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec
echo "Diretórios criados."

echo "Criando grupos de usuários..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC
echo "Grupos criados."

echo "Criando usuários do sistema..."
useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt PassWrd123)
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt PassWrd123)
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt PassWrd123)

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt PassWrd123)
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt PassWrd123)
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt PassWrd123)

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt PassWrd123)
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt PassWrd123)
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt PassWrd123)
echo "usuários criados."

echo "Adicionando usuários aos grupos"
usermod -G GRP_ADM carlos
usermod -G GRP_ADM maria
usermod -G GRP_ADM joao

usermod -G GRP_VEN debora
usermod -G GRP_VEN sebastiana
usermod -G GRP_VEN roberto

usermod -G GRP_SEC josefina
usermod -G GRP_SEC amanda
usermod -G GRP_SEC rogerio
echo "Usuários adicionados."

echo "Atribuindo propriedade de pastas aos grupos"
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec
echo "Atribuição realizada"

echo "Adicionando permissões aos diretórios"
chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
echo "Permissões adicionadas"

echo "Fim."






