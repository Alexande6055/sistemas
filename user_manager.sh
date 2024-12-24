#!/bin/bash

echo "Seleccione una opción:"
echo "1. Agregar usuario"
echo "2. Eliminar usuario"
echo "3. Listar usuarios"
read -r option

case $option in
1)
    echo "Ingrese el nombre del usuario:"
    read -r username
    sudo useradd -m -s /bin/bash "$username"
    echo "Usuario $username creado."
    ;;
2)
    echo "Ingrese el nombre del usuario a eliminar:"
    read -r username
    sudo userdel -r "$username"
    echo "Usuario $username eliminado."
    ;;
3)
    echo "Usuarios actuales del sistema:"
    cut -d: -f1 /etc/passwd
    ;;
*)
    echo "Opción no válida."
    ;;
esac
