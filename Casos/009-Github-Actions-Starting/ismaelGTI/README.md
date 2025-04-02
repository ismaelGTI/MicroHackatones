# Caso 009: GitHub Actions & Monorepos

### Inconvenientes del Enfoque de Repositorio Único

- Ante el cambio en un microservicio, todos los existentes en el repositorio serán construidos y desplegados, aun cuando no hayan sufrido cambios.
- Duración excesiva de los procesos de integración o despliegue continuos.

### Requerimientos del CTO

El CTO de “TuEmpresa” solicita la creación de una nueva Action de GitHub que sea capaz de:

1. Detectar qué microservicios han sufrido cambios y qué carpetas han sido modificadas en el último commit sobre el que actúa la action.
2. Aplicar el proceso de CI/CD solo para los microservicios modificados.
3. Ejecutar los procesos de CI/CD en paralelo para varios microservicios, de forma que se reduzca la duración de estos.

### Estructura del Repositorio

Este repositorio único tiene la siguiente estructura:

- **Doc**: Documentación sobre los microservicios.
- **.github**: Información sobre las GitHub Actions.
- **Micros**: Carpeta que contiene todos los microservicios existentes, cada uno de ellos almacenados en una carpeta con su nombre (Micro1, Micro2, Micro3,…).

### Tips Utilizados

- **GitHub Matrix**: Para ejecutar trabajos en paralelo.
- **tj-actions/changed-files**: Para detectar los archivos y carpetas modificados en el último commit.

### Solución Implementada

Se ha creado una GitHub Action que detecta los microservicios modificados y aplica el proceso de CI/CD solo para estos, ejecutando los procesos en paralelo.
