#!/bin/bash

log_file="/var/log/syslog"
error_log="/home/proyecto/logs/errors.log"

# Filtrar errores y guardar en el archivo
grep "error" "${log_file}" >> "${error_log}"

# Verificar tamaño del archivo de errores
if [ $(stat -c%s "${error_log}") -gt 10240 ]; then
    echo "El archivo ${error_log} supera los 10 KB."
fi
