DROP SCHEMA entrega_1;
CREATE SCHEMA entrega_1;
USE entrega_1;


## Crearé un schema que recopile información sobre una plataforma educativa para estudiantes escolares. 
## En esta serán capaces de comprar distintos tipos de planes, los cuales cada uno aplican una cantidad de beneficios que se consumen al momento de comprarlos (es decir, no tienen una duración específica). 

## Tabla  - Planes de estudio 
# Nombre de la tabla: "plan"
CREATE TABLE IF NOT EXISTS plan(
id_plan INT PRIMARY KEY AUTO_INCREMENT,
nombre_plan VARCHAR(20) UNIQUE 
);


## Tabla - Estudiantes de la plataforma
# Nombre de la tabla: "usuarios"
CREATE TABLE IF NOT EXISTS usuarios(
id_usuario INT PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR(30),
apellido VARCHAR(30),
rut INT,
correo VARCHAR(100) NOT NULL UNIQUE, 
nombre_plan VARCHAR(20),
FOREIGN KEY (nombre_plan) REFERENCES plan(nombre_plan)
);


##Tabla  - País y Moneda de origen
# nombre de la tabla: pais
CREATE TABLE IF NOT EXISTS pais(
id_pais INT PRIMARY KEY AUTO_INCREMENT,
nombre_pais VARCHAR(30) UNIQUE,
moneda VARCHAR(5) UNIQUE
);

## Tabla  - Precios de los planes
# Nombre de la tabla: "precios"
CREATE TABLE IF NOT EXISTS precios(
id_plan INT PRIMARY KEY,
precio INT,
moneda VARCHAR(5) UNIQUE, 
FOREIGN KEY (id_plan) REFERENCES plan(id_plan),
FOREIGN KEY (moneda) REFERENCES pais(moneda)
);

## Tabla  - Pagos de clientes
# Nombre de la tabla: "pagos"

CREATE TABLE IF NOT EXISTS pagos(
id_pago INT PRIMARY KEY AUTO_INCREMENT,
id_usuario INT NOT NULL,
correo VARCHAR(100) NOT NULL,
nombre_plan VARCHAR(20),
id_plan INT, 
precio INT, 
moneda VARCHAR(5),
fecha_pago DATETIME DEFAULT CURRENT_TIMESTAMP,

FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario),
FOREIGN KEY (correo) REFERENCES usuarios(correo),
FOREIGN KEY (nombre_plan) REFERENCES plan(nombre_plan),
FOREIGN KEY (id_plan) REFERENCES precios(id_plan),
FOREIGN KEY (moneda) REFERENCES pais(moneda)
);



## Tabla 6 -