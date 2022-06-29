# DevOps_test

Simulación de un proceso de CI/CD en github actions.

## Consideraciónes

- Repositorio: github
- Estrategia de Git: Modelo de branching - Git Flow
- Aplicación: App en node.js
- Entorno: Se simulan dos instancias EC2 para desarrollo y producción
- Despliegue: Las actualización realizadas en la rama develop serán desplegadas en la instancia de desarrollo, mientras que la main en producción.

### Descripción

El proceso de CI/CD realizado en github actions se compone de las pipelines _pipeline-dev.yml_ y _pipeline-prod.yml_ las cuales se ejecutan cuando las ramas **develop** y **main** son actualizadas.

El pipeline respectivo construye la imagen app-test o app-prod y la almacena en el repositorio [Dockerhub](https://hub.docker.com/u/jhoguaman).

Finalmente la imagen es desplegada en la instancia EC2 correspondiente a las ramas [develop](http://44.204.171.106:3000/hello/dev) y [production](http://3.89.218.218:3000/hello/prod).
