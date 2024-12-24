#!/bin/bash

# Contar líneas que contienen "Linux" en archivos dentro de /home/proyecto/usuarios
grep -i "Linux" /home/proyecto/usuarios/* | wc -l
