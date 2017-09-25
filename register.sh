#!/bin/bash
# Con este script nos podemos registrar al primer salto
# Solamente tenemos que ponerle nuestro nombre completo (o mail)
# mas usuario y ip del servidor.
# $1 Nombre
# $2 usuario: docker-bsa 
# $3 ip: 192.168.74.23
# Ejemplo:
# > register.sh "Mi Nombre y Apellido" docker-bsa 192.168.74.23

echo ssh-keygen -t rsa -b 4096 -q -C \"$1\" | bash
echo ssh-add | bash
echo ssh-copy-id $2@$3 | bash 
