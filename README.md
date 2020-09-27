# Buscador de perfiles con ElasticSearch

Proyecto Web en Ruby on Rails 6 para busqueda de perfiles.

## Instalación

Descargar el proyecto y restaurar los packages.
Desde la consola ejecutar:
```bash
bundle install
```

## Configuraciones
En el archivo config/database.yml en la propiedad development configurar la cadena de conexión a la base de datos de su maquina.

*Nota: La cadena debe ser de POSTGRESQL*


```yml

development:
  <<: *default
  database: Challenge_development
  username: postgres <-- reeplazar con el local
  password: password <-- reeplazar con el local
  host: localhost 

```
**Creación y llenado de la base de datos**


1. Las migraciones de la aplicación ya están incluidas en la carpeta migrations, si se desea generar unas nuevas eliminar la migración existente y  en la consola de administración de paquetes de nuget ejecutar:
```bash
pm> add-migration NombreMigracion
```
2. Para aplicar la migración:
```bash
pm> Update-database
```

## Ejecutar

**Nota: La api ya se encuentra publicada en la url publica [https://libraryadmin.azurewebsites.net](https://libraryadmin.azurewebsites.net/swagger) 
y configurada con el documentador swagger lista para ser testeada, para lanzarla localmente se explica a continuación.**

#### Localmente
Desde el IDE Visual studio, menu Depurar > Iniciar depuración, o tecla F5 para lanzar la aplicación en modo local.


#### Consumo de las API

La api REST esta configurada con JWT por lo tanto es necesario que antes de consumir cualquiera de las api se consuma el metodo Login para obtener el token que posteriormente debe enviarse en la cabecera de las peticiones a la api.

