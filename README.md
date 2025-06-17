# entrega_1_sql
Fecha: 17-06-2025

Nombre: Nicolás Vera

Curso: SQL

Comisión: 81855


# Descripción de tablas
## Tabla: plan
- **id_plan**: Identificador único del plan.
- **nombre_plan**: Nombre de los planes respectivos: i) shuxue ii) yuwen iii) kexue iv) lishi v) yingyu

## Tabla: usuarios
- **id_usuario**: Identificador único del usuario.
- **nombre**: Nombres del estudiante
- **apellido**: Apellidos del estudiante
- **rut**: método de identificación nacional del estudiante
- **correo**: correo electrónico inscrito en la plataforma
- **nombre_plan**: Clave foránea relacionada con la tabla `plan`

## Tabla: pais
- **id_pais**: Identificador único del país.
-  **nombre_pais**: Nombre del país desde donde están comprando. De manera inicial se acepta compras de Chile, Argentina, Colombia, Panamá, México y Estados Unidos..
-  **moneda**: Tipo de moneda según notación internacional (CLP, USD, etc).

## Tabla: precios
- **id_precio**: Identificador único del precio.
- **id_plan**: Clave foránea que hace referencia al plan (tabla `plan`).
- **precio**: Valor numérico del precio.
- **moneda**: Código de la moneda (ej CLP, USD), clave foránea relacionada con la tabla `pais`.


## Tabla: pagos
- **id_pago**: Identificador único de los pagos.
- **id_usuario**: Identificador único de los usuarios, clave foránea relacionada con la tabla `usuarios`.
- **correo**: correo electrónico inscrito en la plataforma, clave foránea relacionada con la tabla `usuarios`.
- **nombre_plan**: nombre de los planes disponibles en la plataforma, clave foránea relacionada con la tabla `plan`.
- **id_plan**: identificador único del plan, clave foránea relacionada con la tabla `plan`.
- **precio**:  Valor numérico del precio.
- **moneda**: código de la moneda (ej CLP, USD)
- **fecha_pago**: Fecha en la que se realizó el pago.
