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


-- empresas
INSERT INTO empresas (rut, nombre, direccion, telefono, correo, web) VALUES('16666666-1', 'empresa1', 'en la casa 1', '1238612', 'asd@asd-cl', 'ajskldasd.com');
-- tipo vehiculo
INSERT INTO tipo_vehiculo (id_tipo_vehiculo, nombre) VALUES('1', 'SUV');
INSERT INTO tipo_vehiculo (id_tipo_vehiculo, nombre) VALUES('2', 'Sedán');
INSERT INTO tipo_vehiculo (id_tipo_vehiculo, nombre) VALUES('3', 'Hatchback');
INSERT INTO tipo_vehiculo (id_tipo_vehiculo, nombre) VALUES('4', 'Pick-up');

-- clientes
INSERT INTO clientes (rut, nombre, correo, direccion, telefono, alta) VALUES('12345678-9', 'Juan Pérez', 'juan.perez@example.com', 'Calle Falsa 123', '+56912345678', 'true');
INSERT INTO clientes (rut, nombre, correo, direccion, telefono, alta) VALUES('98765432-1', 'María López', 'maria.lopez@example.com', 'Avenida Siempreviva 456', '+56987654321', 'true');
INSERT INTO clientes (rut, nombre, correo, direccion, telefono, alta) VALUES('11223344-5', 'Carlos Gómez', 'carlos.gomez@example.com', 'Paseo de la Reforma 789', '+56911223344', 'false');
INSERT INTO clientes (rut, nombre, correo, direccion, telefono, alta) VALUES('55667788-0', 'Ana Martínez', 'ana.martinez@example.com', 'Avenida Principal 987', '+56955667788', 'true');
INSERT INTO clientes (rut, nombre, correo, direccion, telefono, alta) VALUES('22334455-6', 'Pedro Sánchez', 'pedro.sanchez@example.com', 'Calle Secundaria 654', '+56922334455', 'true');
INSERT INTO clientes (rut, nombre, correo, direccion, telefono, alta) VALUES('33445566-7', 'Lucía Fernández', 'lucia.fernandez@example.com', 'Boulevard Central 321', '+56933445566', 'false');
INSERT INTO clientes (rut, nombre, correo, direccion, telefono, alta) VALUES('44556677-8', 'Jorge Ramírez', 'jorge.ramirez@example.com', 'Avenida del Sol 159', '+56944556677', 'true');
INSERT INTO clientes (rut, nombre, correo, direccion, telefono, alta) VALUES('66778899-1', 'Isabel Torres', 'isabel.torres@example.com', 'Calle de la Luna 753', '+56966778899', 'false');
INSERT INTO clientes (rut, nombre, correo, direccion, telefono, alta) VALUES('77889900-2', 'Claudia Núñez', 'claudia.nunez@example.com', 'Calle del Río 246', '+56977889900', 'true');
INSERT INTO clientes (rut, nombre, correo, direccion, telefono, alta) VALUES('88990011-3', 'Rodrigo Pérez', 'rodrigo.perez@example.com', 'Avenida del Mar 135', '+56988990011', 'false');

-- marcas
INSERT INTO marcas (id_marca , Nombre) VALUES (1, 'Toyota');
INSERT INTO marcas (id_marca, Nombre) VALUES (2, 'Honda');
INSERT INTO marcas (id_marca, Nombre) VALUES (3, 'Ford');
INSERT INTO marcas (id_marca, Nombre) VALUES (4, 'Chevrolet');

-- vehiculos
INSERT INTO vehiculos (id_vehiculo, patente, marca, modelo, color, precio, frecuencia_mantencion) VALUES('1', 'AAAA10', '1', '2', 'rojo pasion', 12000000, 2);
INSERT INTO vehiculos (id_vehiculo, patente, marca, modelo, color, precio, frecuencia_mantencion) VALUES('2', 'AAAA11', '2', '2', 'azul intenso', 10000000, 3);
INSERT INTO vehiculos (id_vehiculo, patente, marca, modelo, color, precio, frecuencia_mantencion) VALUES('3', 'AAAA12', '1', '2', 'amarrillo patito', 14000000, 5);
INSERT INTO vehiculos (id_vehiculo, patente, marca, modelo, color, precio, frecuencia_mantencion) VALUES('4', 'AAAA13', '2', '1', 'verde sucio', 17000000, 6);
INSERT INTO vehiculos (id_vehiculo, patente, marca, modelo, color, precio, frecuencia_mantencion) VALUES('5', 'AAAA14', '2', '1', 'blanco puro', 15000000, 3);

INSERT INTO vehiculos (id_vehiculo, patente, marca, modelo, color, precio, frecuencia_mantencion) VALUES('6', 'AAAA15', '3', '3', 'negro mate', 18000000, 4);
INSERT INTO vehiculos (id_vehiculo, patente, marca, modelo, color, precio, frecuencia_mantencion) VALUES('7', 'AAAA16', '4', '2', 'gris tormenta', 16000000, 5);
INSERT INTO vehiculos (id_vehiculo, patente, marca, modelo, color, precio, frecuencia_mantencion) VALUES('8', 'AAAA17', '1', '3', 'azul cielo', 13500000, 3);
INSERT INTO vehiculos (id_vehiculo, patente, marca, modelo, color, precio, frecuencia_mantencion) VALUES('9', 'AAAA18', '3', '1', 'rojo fuego', 20000000, 2);
INSERT INTO vehiculos (id_vehiculo, patente, marca, modelo, color, precio, frecuencia_mantencion) VALUES('10', 'AAAA19', '4', '3', 'blanco nieve', 21000000, 4);
INSERT INTO vehiculos (id_vehiculo, patente, marca, modelo, color, precio, frecuencia_mantencion) VALUES('11', 'AAAA20', '2', '2', 'verde esmeralda', 13000000, 6);
INSERT INTO vehiculos (id_vehiculo, patente, marca, modelo, color, precio, frecuencia_mantencion) VALUES('12', 'AAAA21', '1', '1', 'amarillo limón', 11000000, 2);
INSERT INTO vehiculos (id_vehiculo, patente, marca, modelo, color, precio, frecuencia_mantencion) VALUES('13', 'AAAA22', '3', '2', 'azul marino', 17500000, 3);
INSERT INTO vehiculos (id_vehiculo, patente, marca, modelo, color, precio, frecuencia_mantencion) VALUES('14', 'AAAA23', '4', '1', 'gris claro', 19000000, 5);
INSERT INTO vehiculos (id_vehiculo, patente, marca, modelo, color, precio, frecuencia_mantencion) VALUES('15', 'AAAA24', '2', '3', 'naranja cálido', 15500000, 4);
INSERT INTO vehiculos (id_vehiculo, patente, marca, modelo, color, precio, frecuencia_mantencion) VALUES('16', 'AAAA25', '1', '3', 'rojo rubí', 22000000, 2);
INSERT INTO vehiculos (id_vehiculo, patente, marca, modelo, color, precio, frecuencia_mantencion) VALUES('17', 'AAAA26', '3', '1', 'azul eléctrico', 19500000, 6);
INSERT INTO vehiculos (id_vehiculo, patente, marca, modelo, color, precio, frecuencia_mantencion) VALUES('18', 'AAAA27', '4', '2', 'verde oliva', 18500000, 5);
INSERT INTO vehiculos (id_vehiculo, patente, marca, modelo, color, precio, frecuencia_mantencion) VALUES('19', 'AAAA28', '1', '1', 'blanco perla', 21000000, 4);
INSERT INTO vehiculos (id_vehiculo, patente, marca, modelo, color, precio, frecuencia_mantencion) VALUES('20', 'AAAA29', '2', '3', 'rojo brillante', 24000000, 3);

-- ventas
-- Año 2019
INSERT INTO ventas (folio, rut, id_vehiculo, fecha, monto) VALUES('1', '12345678-9', '1', '22-03-2019', '15000000');
INSERT INTO ventas (folio, rut, id_vehiculo, fecha, monto) VALUES('2', '98765432-1', '2', '15-06-2019', '25000000');
INSERT INTO ventas (folio, rut, id_vehiculo, fecha, monto) VALUES('3', '11223344-5', '3', '10-09-2019', '30000000');

-- Año 2020
INSERT INTO ventas (folio, rut, id_vehiculo, fecha, monto) VALUES('4', '55667788-0', '19', '05-01-2020', '18000000');
INSERT INTO ventas (folio, rut, id_vehiculo, fecha, monto) VALUES('19', '55667788-0', '4', '05-02-2020', '18000000');
INSERT INTO ventas (folio, rut, id_vehiculo, fecha, monto) VALUES('5', '22334455-6', '5', '18-05-2020', '32000000');
INSERT INTO ventas (folio, rut, id_vehiculo, fecha, monto) VALUES('6', '33445566-7', '6', '20-10-2020', '42000000');

-- Año 2021
INSERT INTO ventas (folio, rut, id_vehiculo, fecha, monto) VALUES('7', '44556677-8', '7', '12-01-2021', '35000000');
INSERT INTO ventas (folio, rut, id_vehiculo, fecha, monto) VALUES('8', '66778899-1', '8', '24-04-2021', '29000000');
INSERT INTO ventas (folio, rut, id_vehiculo, fecha, monto) VALUES('9', '12345678-9', '9', '09-07-2021', '55000000');

-- Año 2022
INSERT INTO ventas (folio, rut, id_vehiculo, fecha, monto) VALUES('10', '98765432-1', '10', '17-02-2022', '36000000');
INSERT INTO ventas (folio, rut, id_vehiculo, fecha, monto) VALUES('11', '11223344-5', '11', '29-05-2022', '41000000');
INSERT INTO ventas (folio, rut, id_vehiculo, fecha, monto) VALUES('12', '55667788-0', '12', '15-08-2022', '48000000');

-- Año 2023
INSERT INTO ventas (folio, rut, id_vehiculo, fecha, monto) VALUES('13', '22334455-6', '13', '03-03-2023', '57000000');
INSERT INTO ventas (folio, rut, id_vehiculo, fecha, monto) VALUES('14', '33445566-7', '14', '22-06-2023', '62000000');
INSERT INTO ventas (folio, rut, id_vehiculo, fecha, monto) VALUES('15', '44556677-8', '15', '11-09-2023', '73000000');

-- Año 2024
INSERT INTO ventas (folio, rut, id_vehiculo, fecha, monto) VALUES('16', '66778899-1', '16', '08-02-2024', '46000000');
INSERT INTO ventas (folio, rut, id_vehiculo, fecha, monto) VALUES('17', '12345678-9', '17', '19-05-2024', '34000000');
INSERT INTO ventas (folio, rut, id_vehiculo, fecha, monto) VALUES('18', '98765432-1', '18', '27-08-2024', '65000000');

--1
select * 
from vehiculos vh 
left join ventas vn on vn.id_vehiculo = vh.id_vehiculo 
where vn.id_vehiculo is null ;
--2
select  
vn.folio, 
vn.fecha as Fecha_Venta, 
vn.monto as Monto_Venta, 
c.nombre as Nombre_Cliente, 
c.rut as Rut_Cliente, 
vh.patente as Patente,
m.nombre as Nombre_Marca,
t.nombre as Modelo
from ventas vn
inner join clientes c on vn.rut = c.rut 
inner join vehiculos vh on vn.id_vehiculo = vh.id_vehiculo
inner join marcas m on m.id_marca = vh.marca
inner join tipo_vehiculo t on t.id_tipo_vehiculo = vh.modelo
WHERE TO_CHAR(vn.fecha, 'MM-YYYY') = '01-2020';
--3
select
	v.fecha AS fecha_completa,
    EXTRACT(MONTH FROM v.fecha) AS mes,
    m.nombre AS marca,
    SUM(cast(v.monto as numeric)) AS total_ventas
FROM 
    ventas v
JOIN 
    vehiculos ve ON v.id_vehiculo = ve.id_vehiculo
JOIN 
    marcas m ON ve.marca = m.id_marca
WHERE 
    EXTRACT(YEAR FROM v.fecha) = 2020
GROUP BY 
    v.fecha, mes, m.nombre
ORDER BY 
    mes, marca;
--4
SELECT 
    rut, 
    nombre 
FROM 
    clientes

UNION ALL

SELECT 
    rut, 
    nombre 
FROM 
    empresas;
