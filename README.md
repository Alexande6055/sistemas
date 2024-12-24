# Proyecto: Entorno Automatizado de Gestión y Monitoreo en Linux

## Estructura del Proyecto
El proyecto está estructurado de la siguiente manera:

```
/home/proyecto/
  usuarios/         # Directorio para almacenar datos relacionados con usuarios.
  backups/          # Directorio donde se almacenan las copias de seguridad.
  logs/             # Directorio para almacenar los archivos de logs.
  scripts/          # Carpeta que contiene los scripts de automatización.
```

- **Usuarios:**
  - `admin`: Acceso completo al sistema.
  - `developAlexanderTasinchano`: Acceso solo al directorio `/home/proyecto/usuarios`.
  - `tester`: Acceso solo al directorio `/home/proyecto/logs`.

- **Credenciales de Usuarios:**
  - Usuario principal o root: `alex`, contraseña: `root`.
  - Usuario admin: `admin`, contraseña: `admin`.
  - Usuario tester: `tester`, contraseña: `test`.
  - Usuario developAlexanderTasinchano: `developAlexanderTasinchano`, contraseña: `alextas`.

## Instrucciones para Ejecutar Scripts
Los scripts se encuentran en el directorio `/home/proyecto/scripts`. Antes de ejecutarlos, asegúrate de que tienen permisos de ejecución:

```bash
chmod +x /home/proyecto/scripts/*.sh
```

### Scripts Disponibles

1. **Script de configuración inicial (`setup_project.sh`)**
   - Configura el entorno inicial: estructura de directorios y creación de usuarios.
   - Ejecución:
     ```bash
     sudo /home/proyecto/scripts/setup_project.sh
     ```

2. **Script de copias de seguridad (`backup.sh`)**
   - Crea un archivo comprimido de los datos en `/home/proyecto` y lo guarda en `/home/proyecto/backups` con la fecha actual.
   - Ejecución:
     ```bash
     /home/proyecto/scripts/backup.sh
     ```
   - Salida:
     Archivo comprimido en formato `backup_YYYY-MM-DD.tar.gz`.

3. **Script de monitoreo de logs (`monitor_logs.sh`)**
   - Filtra errores del archivo `/var/log/syslog` y los almacena en `/home/proyecto/logs/errors.log`.
   - Notifica si el tamaño del archivo supera los 10 KB.
   - Ejecución:
     ```bash
     /home/proyecto/scripts/monitor_logs.sh
     ```
   - Salida:
     Archivos de logs filtrados en `errors.log`.

4. **Script de gestión de usuarios (`user_manager.sh`)**
   - Permite agregar, eliminar y listar usuarios del sistema.
   - Ejecución:
     ```bash
     sudo /home/proyecto/scripts/user_manager.sh
     ```
   - Opciones disponibles:
     - Agregar un usuario.
     - Eliminar un usuario.
     - Listar usuarios.

5. **Script de procesamiento de datos (`process_data.sh`)**
   - Cuenta las líneas que contienen la palabra “Linux” en los archivos del directorio `/home/proyecto/usuarios`.
   - Ejecución:
     ```bash
     /home/proyecto/scripts/process_data.sh
     ```
   - Salida:
     Cantidad de líneas encontradas.

6. **Script para generar reportes del sistema (`system_report.sh`)**
   - Genera un reporte del uso de disco, memoria y tiempo de actividad en `/home/proyecto/logs/system_report.txt`.
   - Ejecución:
     ```bash
     /home/proyecto/scripts/system_report.sh
     ```

## Ejemplos de Entrada y Salida

### 1. **Copia de Seguridad**
- Entrada:
  ```bash
  /home/proyecto/scripts/backup.sh
  ```
- Salida:
  ```
  Archivo creado: /home/proyecto/backups/backup_2024-12-23.tar.gz
  ```

### 2. **Monitoreo de Logs**
- Entrada:
  ```bash
  /home/proyecto/scripts/monitor_logs.sh
  ```
- Salida:
  ```
  Error log actualizado: /home/proyecto/logs/errors.log (Tamaño: 11 KB).
  ```

### 3. **Gestión de Usuarios**
- Entrada:
  ```bash
  sudo /home/proyecto/scripts/user_manager.sh
  ```
- Salida:
  ```
  1. Agregar usuario
  2. Eliminar usuario
  3. Listar usuarios
  Seleccione una opción: 3
  Usuarios actuales:
  - root
  - admin
  - developAlexanderTasinchano
  - tester
  ```

## Razonamiento

### Automatización de Tareas
Los scripts eliminan la necesidad de realizar tareas repetitivas manualmente, como copias de seguridad y filtrado de logs. Esto ahorra tiempo y minimiza errores humanos.

- **Copia de Seguridad:** Automatiza la creación de copias comprimidas con marcas de tiempo.
- **Monitoreo de Logs:** Detecta errores y notifica al usuario cuando el archivo de logs es demasiado grande.

### Gestión Simplificada
El script `user_manager.sh` proporciona una interfaz sencilla para agregar, eliminar y listar usuarios, facilitando la administración del sistema sin necesidad de recordar comandos complejos.

### Mejora del Monitoreo
El reporte del sistema combina información crítica en un solo archivo, lo que permite al administrador tomar decisiones informadas sobre el estado del sistema.

### Uso Eficiente de Herramientas de Linux
Los scripts integran comandos avanzados, redirecciones y pipes para procesar datos de manera eficiente. Esto demuestra cómo aprovechar el potencial completo de Linux para resolver problemas de administración y monitoreo.

Este proyecto representa una solución robusta y práctica para la gestión y supervisión de sistemas basados en Linux.

