# Breaking News Blog

Este es un sitio web de noticias con una administración sencilla. Permite publicar noticias y comentarlas. Puedes revisarlo en el siguiente link:

> [https://breakingnewsblog.herokuapp.com/](https://breakingnewsblog.herokuapp.com/)

o bien, instalarlo localmente en tu computador como se explica a continuación.

##Instrucciones de instalación local

Para instalar la aplicación debes descargar el repositorio privado:

> [https://github.com/sofizambrano/breakingnewsblog](https://github.com/sofizambrano/breakingnewsblog)

Luego, debes abrir la terminal o consola de tu computador e ingresar a la carpeta breakingnewsblog que descargaste. Asegúrate de tener Ruby (versión 2.4.0 o posterior) on Rails (versión 5.0.2 o posterior) y PostgreSQL instaladas en tu computador antes de correr la aplicación.

Para correr la aplicación en el servidor, escribe desde la consola:
```
$bundle install
$bundle exec rake db:migrate
$rails s
```
Nota: en caso de tener problemas de permisos, ejecuta lo anterior anteponiendo sudo.

Luego, abre la aplicación desde un browser, ingresando en el siguiente link:

> [http://localhost:3000/](http://localhost:3000/)

##Gemas utilizadas

```
# Para el uso de postgresql como base de datos para Active Record:
gem 'pg', '~> 0.18'
# Para el servidor de la app:
gem 'puma', '~> 3.0'
# Para generar el diagrama UML de la base de datos:
gem 'railroady'
```

## Modelo

El modelo consiste en dos entidades:

___

### Article o Artículo
Cada artículo de noticia tiene los atributos: id (integer), title o título (string), headline o bajada de título (text), body o cuerpo (text), created_at o creado_en (:timestamp without time zone) y updated_at o actualizado_en (:timestamp without time zone). La asociación que tiene con los comentarios es: has_many.

___

### Comment o Comentario
Cada comentario tiene los atributos: id (integer), author o autor (string), content o contenido (text), created_at o creado_en (:timestamp without time zone), updated_at o actualizado_en (:timestamp without time zone) y article_id (integer). Este último es una llave foránea que referencia al id del artículo al que pertenece. La asociación que tiene con los comentarios es: belongs_to.

Se encuentra un diagrama UML de la base de datos en este repositorio: breakingnewsblog/blob/master/doc/models_complete.svg

___




## Alumna:


| Nº Alumno    | Nombre              | Email UC      | Github          |
|:-------------|:--------------------|:--------------|:----------------|
| 12639176     | Sofía Zambrano     | sizambrano@uc.cl | @sofizambrano     |

