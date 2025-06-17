# entrega_1_sql
Fecha: 17-06-2025

Nombre: Nicolás Vera

Curso: SQL

Comisión: 81855


# Descripción de tablas
## Tabla: plan
- **id_plan**:
- **nombre_plan**:

## Tabla: usuarios
- **id_usuario**:
- **nombre**:
- **apellido**:
- **rut**:
- **correo**:
- **nombre_plan**: 

## Tabla: pais
- **id_pais**:
-  **nombre_pais**:
-  **moneda**:

## Tabla: precios
- **id_precio**: Identificador único del precio.
- **id_plan**: Clave foránea que hace referencia al plan (tabla `plan`).
- **precio**: Valor numérico del precio.
- **moneda**: Código de la moneda (ej. CLP, USD), clave foránea relacionada con la tabla `pais`.


## Tabla: pagos
- **id_pago**:
- **id_usuario**:
- **correo**:
- **nombre_plan**:
- **id_plan**:
- **precio**:
- **moneda**:
- **fecha_pago**:
