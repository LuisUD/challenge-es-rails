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

Debe tener previamente instalada la ultima version de Rails.

1. Las migraciones de la aplicación ya están incluidas en la carpeta migrations.
2. Crear la base de datos:
```bash
> rails db:create
```
3. Para aplicar las migraciónes:
```bash
> rails db:migrate
```
4. Para cargar la base de datos (seed):
```bash
> rails db:seed
```
**Creación de Index de ElasticSearch e importación**

Para este paso es necesario tener instalada la version local de ElasticSearch la cual puede descargar de
[https://www.elastic.co/es/downloads/elasticsearch](https://www.elastic.co/es/downloads/elasticsearch)

1. En la terminal ejecutamos el siguiente comando para abrir la consola de rails:
```bash
> rails c
```
2. dentro de la consola de rails ejecutar el siguiente comando para crear el index de ES:
```bash
> User.__elasticsearch__.create_index!(force: true)
```
3. dentro de la consola de rails ejecutar el siguiente comando para cargar los datos al index de ES:
```bash
> User.import
```
4. salimos ejecutado:
```bash
> exit
```

## Ejecutar

**Nota: La aplicación ya se encuentra publicada en la url publica [https://search-es-challenge.herokuapp.com/](https://search-es-challenge.herokuapp.com/) en heroku**

#### Localmente
Desde consola ejecutar
```bash
> rails s
```

