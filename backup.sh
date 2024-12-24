#!/bin/bash

# Rutas
backup_dir="/home/proyecto/backups"
project_dir="/home/proyecto"
backup_file="backup_$(date +%F).tar.gz"

# Crear el backup
tar -czvf "${backup_dir}/${backup_file}" "${project_dir}"

echo "Backup realizado y guardado en ${backup_dir}/${backup_file}"
