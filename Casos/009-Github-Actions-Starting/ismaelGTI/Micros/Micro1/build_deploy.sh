#!/bin/bash
# Este script se utiliza para construir y desplegar el Microservicio Nº1.
# Crea los directorios necesarios para la construcción y el despliegue,
# copia los artefactos de construcción al directorio de despliegue,
# y asegura que el proceso se detenga ante cualquier error.
# Script sencillo para construir y desplegar

set -e

BUILD_DIR="./build"
DEPLOY_DIR="/var/www/microservice1"

mkdir -p "$BUILD_DIR" "$DEPLOY_DIR"
cp -r "$BUILD_DIR"/* "$DEPLOY_DIR"

echo "Build and deploy completed."
echo "# Cambio de prueba" >> Casos/009-Github-Actions-Starting/ismaelGTI/Micros/Micro1/build_deploy.sh
#TEST DEL FUNCIONAMIENTO DEL WORKFLOW.