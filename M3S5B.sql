CREATE TABLE "empresas" (
  "rut" integer PRIMARY KEY,
  "nombre" varchar,
  "direccion" varchar,
  "telefono" varchar,
  "correo" varchar,
  "web" varchar
);

CREATE TABLE "clientes" (
  "rut" varchar PRIMARY KEY,
  "nombre" varchar,
  "direccion" varchar,
  "telefono" varchar,
  "correo" varchar,
  "alta" bool
);

CREATE TABLE "arriendos" (
  "folio" varchar PRIMARY KEY,
  "rut" varchar,
  "id_herramienta" varchar,
  "fecha" timestamp,
  "dias" varchar,
  "valor_dia" varchar,
  "garantia" varchar
);

CREATE TABLE "herramientas" (
  "id_herramienta" varchar PRIMARY KEY,
  "nombre" varchar,
  "precio_dia" varchar
);

ALTER TABLE "arriendos" ADD FOREIGN KEY ("rut") REFERENCES "clientes" ("rut");
ALTER TABLE "arriendos" ADD FOREIGN KEY ("id_herramienta") REFERENCES "herramientas" ("id_herramienta");

INSERT INTO empresas (rut, nombre, direccion, telefono, correo, web) VALUES (12345678, 'TechCorp', 'Av. Siempre Viva 123', '555-1234', 'info@techcorp.com', 'www.techcorp.com');
select * from empresas;

INSERT INTO herramientas (id_herramienta, nombre, precio_dia) VALUES ('H001', 'Taladro', '10000');
INSERT INTO herramientas (id_herramienta, nombre, precio_dia) VALUES ('H002', 'Sierra Circular', '15000');
INSERT INTO herramientas (id_herramienta, nombre, precio_dia) VALUES ('H003', 'Martillo', '5000');
INSERT INTO herramientas (id_herramienta, nombre, precio_dia) VALUES ('H004', 'Lijadora', '12000');
INSERT INTO herramientas (id_herramienta, nombre, precio_dia) VALUES ('H005', 'Compresor de Aire', '20000');
select * from herramientas;

INSERT INTO clientes (rut, nombre, direccion, telefono, correo, alta) VALUES ('11111111-1', 'Juan Pérez', 'Calle Falsa 123', '555-4321', 'juan@example.com', true);
INSERT INTO clientes (rut, nombre, direccion, telefono, correo, alta) VALUES ('22222222-2', 'Ana García', 'Calle Verdadera 456', '555-5678', 'ana@example.com', true);
INSERT INTO clientes (rut, nombre, direccion, telefono, correo, alta) VALUES ('33333333-3', 'Luis López', 'Calle Central 789', '555-8765', 'luis@example.com', true);
select * from clientes;

DELETE FROM clientes WHERE rut = '33333333-3';
select * from clientes;
DELETE FROM herramientas WHERE id_herramienta = 'H001';
select * from herramientas;

INSERT INTO arriendos (folio, rut, id_herramienta, fecha, dias, valor_dia, garantia) VALUES ('A001', '11111111-1', 'H002', '2024-08-01 10:00:00', '3', '15.00', '50000');
INSERT INTO arriendos (folio, rut, id_herramienta, fecha, dias, valor_dia, garantia) VALUES ('A002', '11111111-1', 'H003', '2024-08-02 14:00:00', '2', '5.00', '10000');
INSERT INTO arriendos (folio, rut, id_herramienta, fecha, dias, valor_dia, garantia) VALUES ('A003', '22222222-2', 'H004', '2024-08-03 09:00:00', '4', '12.00', '30000');
INSERT INTO arriendos (folio, rut, id_herramienta, fecha, dias, valor_dia, garantia) VALUES ('A004', '22222222-2', 'H005', '2024-08-04 11:00:00', '1', '20.00', '100000');
select * from arriendos;
UPDATE arriendos SET valor_dia = '20000' WHERE valor_dia = '20.00';

UPDATE clientes SET correo = 'juan.perez@nuevoemail.com' WHERE rut = '11111111-1';
SELECT * FROM herramientas;
SELECT * FROM arriendos WHERE rut = '22222222-2';
SELECT * FROM clientes WHERE nombre ILIKE '%a%';
SELECT nombre FROM herramientas ORDER BY id_herramienta LIMIT 1 OFFSET 1;
UPDATE arriendos SET fecha = '2020-01-15 00:00:00' WHERE folio IN (SELECT folio FROM arriendos ORDER BY folio LIMIT 2);
SELECT folio, fecha, valor_dia FROM arriendos WHERE fecha BETWEEN '2020-01-01' AND '2020-01-31';