### NTT DATA - Challenge QA Karate

Mediante el uso de la heramienta Karate Labs se realiza la automatización de servicios REST usando la página https://petstore.swagger.io/ para consumo de API's y en el cual se consumen los siguientes servicios:
- Creación de usuario
- Obtener información del usuario creado
- Actualizar el nombre y correo del usuario creado
- Obtener información del usuario modificado
- Eliminar el usuario creado

#### Prerequisitos:
- Sistema Operativo Windows 10
- IDE IntelliJ IDEA 2023.3.2
- Gradle version 7.6
- JDK version Corretto 17
- Descargar o clonar el proyecto
- Extraer el proyecto en la ruta local de su preferencia

#### Comandos de Instalación y Ejecución
- Abri el proyecto con el IDE IntelliJ
- Click en el Icono de *'Gradle'*
- Abrir el *'Execute Gradle Task'*  y ejecutar los siguientes comandos

```bash
gradle clean
gradle build
```
En caso de preesentarse inconvenientes para ejecutar los 'test', con los comandos anteriores, ejecutar el siguiente comando:
```bash
gradle test
```

#### Instalación y Ejecución mediante IDE
- Abri el proyecto con el IDE IntelliJ
- Abrir el archivo "build.gradle" se encuentra en la raiz del proyecto
- Click en el icon *'Load Gradle Changes'*
- Abrir el archivo *'Runners'* de la ruta "src/test/java/users/"
- Click sobre *'Run Test'* en el método *'testParallel()'*

#### Reportes
Descargar los siguientes reportes, los cuales nos permiten tener un informe detallado de las pruebas automatizadas y su estado final:
```bash
"build/reports/tests/test/index.html" - Se generan una vez compilado y ejecutados los test
"build/karate-reports/karate-summary.html" - Se generan una vez compilado y ejecutados los test
"build/cucumber-html-reports/overview-features.html" - Se generan una vez compilado y ejecutados los test
"Reports.html" - Reporte principal de las pruebas automatizadas
```

En cada una de las rutas antes mencionadas, se encuentran reportes adicionales

#### Nota
En caso de presentar incovenientes con las dependencias se debe actualizar la versión de las mismas, las cuales se encuentran en el siguiente archivo "build.gradle" de la raíz del proyecto