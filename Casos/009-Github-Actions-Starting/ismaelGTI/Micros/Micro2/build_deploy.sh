#!/bin/bash
# Este script se utiliza para construir y desplegar el Microservicio Nº2.
# Crea los directorios necesarios para la construcción y el despliegue,
# copia los artefactos de construcción al directorio de despliegue,
# y asegura que el proceso se detenga ante cualquier error.
# Script sencillo para construir y desplegar

set -e

BUILD_DIR="./build"
DEPLOY_DIR="/var/www/microservice2"

mkdir -p "$BUILD_DIR" "$DEPLOY_DIR"
cp -r "$BUILD_DIR"/* "$DEPLOY_DIR"

echo "Build and deploy completed."
# Realizar un cambio en un archivo para activar el workflow
echo "// Adding a comment to trigger the workflow" >> Micros/test_service/example.txt
