#!/bin/bash

# Declaro variables
UserName="david.dearaujo"
AuthPassword="Y74kQ#SmZ<eyp)N<"
PrivateKeyPassword="Lunes09!"

# Crear archivo temporal con las credenciales
credenciales_temporales=$(mktemp)
echo -e "$UserName\n$AuthPassword\n$PrivateKeyPassword" > "$credenciales_temporales"

# Cambiar directorio al lugar donde está el archivo .ovpn
cd /etc/openvpn/config

# Ejecutar OpenVPN con los valores proporcionados
sudo openvpn --auth-user-pass "$credenciales_temporales" MagentaInnova.ovpn

# Eliminar el archivo temporal después de usarlo
rm "$credenciales_temporales"



