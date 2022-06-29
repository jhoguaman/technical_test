# DevOps_test

Simulación de un proceso de CI/CD en github actions.

## Consideraciónes

- Repositorio: github
- Estrategia de Git: Modelo de branching - Git Flow
- Aplicación: java maven
- Entorno: Se simulan dos instancias EC2 para desarrollo y producción
- Despliegue: Las actualizaciones realizadas en la rama **develop** serán desplegadas en la instancia para desarrollo, mientras que las actualizaciones de la rama **master** en producción.

### Descripción

El proceso de CI/CD realizado en github actions se compone de las pipelines _pipeline-dev.yml_ y _pipeline-prod.yml_ las cuales se ejecutan cuando las ramas **develop** y **master** son actualizadas.

El pipeline respectivo procede en tres etapas: **test**, **build** y **deploy**.

En la estapa de **test** se realizan las pruebas unitarias donde se valida que la salida de la aplicación sea igual a _Hello World!_, caso contrario las mismas fallarán.

La etapa de **build** construirá la imagen app-test o app-prod y la almacenará en el repositorio [Dockerhub](https://hub.docker.com/u/jhoguaman).

Finalmente la etapa **deploy** desplegará la aplicación en la instancia EC2 correspondiente a las ramas **develop** y **master**.
