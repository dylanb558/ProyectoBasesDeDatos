
## Instalación y ejecución – Entrega2

### 1. Requisitos previos

Antes de comenzar, es necesario tener instalado:

- PostgreSQL.
- Node.js.
- npm.

### 2. Crear la base de datos

Desde PostgreSQL o pgAdmin, ejecutar:

```sql
CREATE DATABASE "Entrega2";
```

### 3. Inicializar la estructura de la base de datos

Conectarse a la base de datos `Entrega2` y ejecutar los siguientes archivos SQL en el orden indicado:

1. `CreateTablesSql.sql`: crea las tablas, claves primarias y relaciones.
2. `InsertData.sql`: inserta los datos iniciales de la empresa, gerencias, áreas y trabajadores.
3. `SP y Triggers.sql`: crea los procedimientos almacenados y triggers.

Estos archivos se encuentran dentro de la carpeta `Entrega2/`.

### 4. Configurar la aplicación web

Ingresar a la carpeta de la aplicación:

```bash
cd Entrega2/PaginaWeb
```

Instalar las dependencias:

```bash
npm install
```

Configurar en `app.js` los datos de conexión a PostgreSQL (usuario, contraseña, host, puerto y nombre de la base de datos).

### 5. Ejecutar el servidor

Desde la carpeta `PaginaWeb`, ejecutar:

```bash
node app.js
```

Una vez iniciado el servidor, acceder desde el navegador a:

```text
http://localhost/
```

**Nota:** el puerto depende de la configuración definida en `app.js`.


Proyecto académico – Segundo semestre 2025.
