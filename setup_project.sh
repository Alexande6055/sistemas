#!/bin/bash

# Crear estructura de directorios
echo "Creando estructura de directorios..."
mkdir -p /home/proyecto/usuarios /home/proyecto/backups /home/proyecto/logs
echo "Directorios creados: /home/proyecto/usuarios, /home/proyecto/backups, /home/proyecto/logs"

# Crear usuarios
echo "Creando usuarios..."
sudo useradd -m -s /bin/bash admin
sudo useradd -m -s /bin/bash developAlexanderTasinchano
sudo useradd -m -s /bin/bash tester
echo "Usuarios creados: admin, developAlexanderTasinchano, tester"

# Configurar permisos
echo "Configurando permisos..."
# Acceso total a admin
sudo chown admin:admin /home/proyecto -R
sudo chmod 770 /home/proyecto

# Acceso a developAlexanderTasinchano solo en /home/proyecto/usuarios
sudo setfacl -m u:developAlexanderTasinchano:rwx /home/proyecto/usuarios

# Acceso a tester solo en /home/proyecto/logs
sudo setfacl -m u:tester:rwx /home/proyecto/logs

# Configuración completa
echo "Permisos configurados:"
echo "- admin: acceso completo a /home/proyecto"
echo "- developAlexanderTasinchano: acceso a /home/proyecto/usuarios"
echo "- tester: acceso a /home/proyecto/logs"

echo "Configuración inicial completada."
