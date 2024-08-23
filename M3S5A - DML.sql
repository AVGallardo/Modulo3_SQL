CREATE TABLE "empresas" (
  "rut" varchar PRIMARY KEY,
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

CREATE TABLE "vehiculos" (
  "id_vehiculo" varchar PRIMARY KEY,
  "patente" varchar,
  "marca" varchar,
  "modelo" varchar,
  "color" varchar,
  "precio" varchar,
  "frecuencia_mantencion" varchar
);

CREATE TABLE "tipo_vehiculo" (
  "id_tipo_vehiculo" varchar PRIMARY KEY,
  "nombre" varchar
);

CREATE TABLE "marcas" (
  "id_marca" varchar PRIMARY KEY,
  "nombre" varchar
);

CREATE TABLE "ventas" (
  "folio" varchar PRIMARY KEY,
  "rut" varchar,
  "id_vehiculo" varchar,
  "fecha" timestamp,
  "monto" varchar
);

CREATE TABLE "mantencion" (
  "id_mantencion" varchar PRIMARY KEY,
  "folio" varchar,
  "fecha" timestamp,
  "trabajos_realizados" varchar
);

ALTER TABLE "ventas" ADD FOREIGN KEY ("rut") REFERENCES "clientes" ("rut");
ALTER TABLE "mantencion" ADD FOREIGN KEY ("folio") REFERENCES "ventas" ("folio");
ALTER TABLE "vehiculos" ADD FOREIGN KEY ("marca") REFERENCES "marcas" ("id_marca");
ALTER TABLE "ventas" ADD FOREIGN KEY ("id_vehiculo") REFERENCES "vehiculos" ("id_vehiculo");
ALTER TABLE "vehiculos" ADD FOREIGN KEY ("modelo") REFERENCES "tipo_vehiculo" ("id_tipo_vehiculo");

INSERT INTO empresas (rut, nombre, direccion, telefono, correo, web) VALUES('16666666-1', 'empresa1', 'en la casa 1', '1238612', 'asd@asd-cl', 'ajskldasd.com');
select * FROM empresas;

INSERT INTO tipo_vehiculo (id_tipo_vehiculo, nombre) VALUES('1', 'SUV');
INSERT INTO tipo_vehiculo (id_tipo_vehiculo, nombre) VALUES('2', 'Sedán');
select * FROM tipo_vehiculo;

INSERT INTO clientes (rut, nombre, correo, direccion, telefono , alta) VALUES('12345678-9', 'Juan Pérez', 'juan.perez@example.com', 'Calle Falsa 123', '+56912345678', 'true');
INSERT INTO clientes (rut, nombre, correo, direccion, telefono, alta) VALUES('98765432-1', 'María López', 'maria.lopez@example.com', 'Avenida Siempreviva 456', '+56987654321', 'true');
INSERT INTO clientes (rut, nombre, correo, direccion, telefono, alta) VALUES('11223344-5', 'Carlos Gómez', 'carlos.gomez@example.com', 'Paseo de la Reforma 789', '+56911223344', 'false');
select * FROM clientes;

INSERT INTO marcas (id_marca , Nombre) VALUES (1, 'Toyota');
INSERT INTO marcas (id_marca, Nombre) VALUES (2, 'Honda');
select * FROM marcas;

INSERT INTO vehiculos (id_vehiculo, patente, marca, modelo, color, precio, frecuencia_mantencion) VALUES('1', 'AAAA10', '1', '2', 'rojo pasion', 12000000, 2);
INSERT INTO vehiculos (id_vehiculo, patente, marca, modelo, color, precio, frecuencia_mantencion) VALUES('2', 'AAAA11', '2', '2', 'azul intenso', 10000000, 3);
INSERT INTO vehiculos (id_vehiculo, patente, marca, modelo, color, precio, frecuencia_mantencion) VALUES('3', 'AAAA12', '1', '2', 'amarrillo patito', 14000000, 5);
INSERT INTO vehiculos (id_vehiculo, patente, marca, modelo, color, precio, frecuencia_mantencion) VALUES('4', 'AAAA13', '2', '1', 'verde sucio', 17000000, 6);
INSERT INTO vehiculos (id_vehiculo, patente, marca, modelo, color, precio, frecuencia_mantencion) VALUES('5', 'AAAA14', '2', '1', 'blanco puro', 15000000, 3);
select * from vehiculos;

delete from clientes where rut='11223344-5';
select * FROM clientes;

INSERT INTO ventas (folio, rut, id_vehiculo, fecha, monto) VALUES('1', '12345678-9', '1', now(), '12000000');
INSERT INTO ventas (folio, rut, id_vehiculo, fecha, monto) VALUES('2', '98765432-1', '3', now(), '14000000');
select * FROM ventas;

update clientes set nombre ='María Jose Quintanilla' where nombre = 'María López';
select * FROM clientes;

select * from ventas;
select * from ventas v where v.rut = '12345678-9' ;

select patente, color from vehiculos;



