# Buscador de perfiles con ElasticSearch

Proyecto Web en Ruby on Rails 6 para busqueda de perfiles.

## Instalación

Descargar el proyecto y restaurar los packages.
```bash
nuget restore MySolution.sln
```

## Configuraciones
En el archivo appsettings.json en la propiedad RepositoryDB reemplazar el valor de la propiedad por la cadena conexión de la base de datos de su proyecto.

*Nota: La cadena debe ser de SQL SERVER*


```c#

 "ConnectionStrings": {
   "RepositoryDB": "#CADENA-CONEXIÓN -SQL-SERVER#"
 }

```
**Nota: Las migraciones y la creación de la base de datos (si no existe) se ejecutan automáticamente al lanzar la aplicación, si desea ejecutar este proceso manualmente a continuación se explica como.**


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

