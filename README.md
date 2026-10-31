# CIQ Minería S.A. – Proyecto de Bases de Datos

Proyecto académico desarrollado por **Team Mish** para la asignatura Bases de Datos. Consiste en el diseño e implementación de una base de datos relacional para la empresa ficticia CIQ Minería S.A., orientada a organizar información de sus gerencias, áreas y trabajadores.

## Estructura del repositorio

El proyecto está organizado en dos entregas:

### 📁 Entrega1
Primera etapa del proyecto, enfocada en el análisis y modelamiento de la base de datos.

- Modelo entidad-relación (MER).
- Diseño conceptual de la estructura de datos.

### 📁 Entrega2
Segunda etapa del proyecto, correspondiente a la implementación de la solución.

- `README.md`: documentación de la implementación.
- `CreateTablesSql.sql`: creación de tablas y relaciones de la base de datos.
- `InsertData.sql`: inserción de datos de prueba.
- `SP y Triggers.sql`: procedimientos almacenados y triggers.
- `PaginaWeb/`: aplicación web para consultar información de la base de datos.

## Tecnologías utilizadas

- **PostgreSQL:** sistema gestor de bases de datos.
- **SQL / PL/pgSQL:** creación de estructuras, consultas y lógica de base de datos.
- **Node.js:** entorno de ejecución del backend.
- **Express.js:** desarrollo del servidor y API.
- **node-postgres (pg):** conexión entre Node.js y PostgreSQL.
- **HTML5 y JavaScript:** desarrollo de la interfaz web.

## Funcionalidades principales

- Modelamiento e implementación de una base de datos relacional.
- Representación de las gerencias de Operaciones, Planificación y Personas.
- Registro y consulta de trabajadores.
- Asignación de trabajadores a distintas áreas.
- Búsqueda de trabajadores mediante RUT.
- Procedimiento almacenado para registrar trabajadores.
- Trigger para proteger la integridad de los datos ante eliminaciones.

## Equipo de desarrollo

**Team Mish**

- Pedro Rojas
- Dylan Barahona
- Joaquín Abarzúa
- Alejandro Arias
- Cristian San Martín

Proyecto académico – Segundo semestre 2025.
