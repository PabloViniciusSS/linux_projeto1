cat /etc/passwd
userdel -r -f lxd
userdel -r -f joao
userdel -r -f guest

cat /etc/group
groupdel  GRP_ADM
groupdel  GRP_ETC

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

grupadd GRP_ADM
grupadd GRP_VEN
grupadd GRP_SEC



useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt 123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt 123) -G GRP_VEN
useradd joao_ -m -s /bin/bash -p $(openssl passwd -crypt 123) -G GRP_SEC

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt 123) -G GRP_ADM
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt 123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt 123) -G GRP_SEC

useradd josefina  -m -s /bin/bash -p $(openssl passwd -crypt 123) -G GRP_ADM
useradd amanda  -m -s /bin/bash  -p $(openssl passwd -crypt 123) -G GRP_VEN
useradd rogerio  -m -s /bin/bash -p $(openssl passwd -crypt 123) -G GRP_SEC

echo "Especificando permissões de diretórios..."

chown root:GRP_ADM
chown root:GRP_VEN
chown root:GRP_SEC

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim..."
