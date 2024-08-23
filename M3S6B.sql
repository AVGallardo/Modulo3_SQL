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


INSERT INTO empresas (rut, nombre, direccion, telefono, correo, web) VALUES (101234567, 'Empresa A', 'Calle 1', '+56912345671', 'contacto@empresaa.com', 'www.empresaa.com');
INSERT INTO empresas (rut, nombre, direccion, telefono, correo, web) VALUES (101234568, 'Empresa B', 'Calle 2', '+56912345672', 'contacto@empresab.com', 'www.empresab.com');
INSERT INTO empresas (rut, nombre, direccion, telefono, correo, web) VALUES (101234569, 'Empresa C', 'Calle 3', '+56912345673', 'contacto@empresac.com', 'www.empresac.com');
INSERT INTO empresas (rut, nombre, direccion, telefono, correo, web) VALUES (101234570, 'Empresa D', 'Calle 4', '+56912345674', 'contacto@empresad.com', 'www.empresad.com');
INSERT INTO empresas (rut, nombre, direccion, telefono, correo, web) VALUES (101234571, 'Empresa E', 'Calle 5', '+56912345675', 'contacto@empresa.com', 'www.empresa.com');
INSERT INTO empresas (rut, nombre, direccion, telefono, correo, web) VALUES (101234572, 'Empresa F', 'Calle 6', '+56912345676', 'contacto@empresaf.com', 'www.empresaf.com');
INSERT INTO empresas (rut, nombre, direccion, telefono, correo, web) VALUES (101234573, 'Empresa G', 'Calle 7', '+56912345677', 'contacto@empresag.com', 'www.empresag.com');
INSERT INTO empresas (rut, nombre, direccion, telefono, correo, web) VALUES (101234574, 'Empresa H', 'Calle 8', '+56912345678', 'contacto@empresah.com', 'www.empresah.com');
INSERT INTO empresas (rut, nombre, direccion, telefono, correo, web) VALUES (101234575, 'Empresa I', 'Calle 9', '+56912345679', 'contacto@empresai.com', 'www.empresai.com');
INSERT INTO empresas (rut, nombre, direccion, telefono, correo, web) VALUES (101234576, 'Empresa J', 'Calle 10', '+56912345680', 'contacto@empresaj.com', 'www.empresaj.com');
INSERT INTO empresas (rut, nombre, direccion, telefono, correo, web) VALUES (101234577, 'Empresa K', 'Calle 11', '+56912345681', 'contacto@empresak.com', 'www.empresak.com');
INSERT INTO empresas (rut, nombre, direccion, telefono, correo, web) VALUES (101234578, 'Empresa L', 'Calle 12', '+56912345682', 'contacto@empresal.com', 'www.empresal.com');
INSERT INTO empresas (rut, nombre, direccion, telefono, correo, web) VALUES (101234579, 'Empresa M', 'Calle 13', '+56912345683', 'contacto@empresam.com', 'www.empresam.com');
INSERT INTO empresas (rut, nombre, direccion, telefono, correo, web) VALUES (101234580, 'Empresa N', 'Calle 14', '+56912345684', 'contacto@empresan.com', 'www.empresan.com');
INSERT INTO empresas (rut, nombre, direccion, telefono, correo, web) VALUES (101234581, 'Empresa O', 'Calle 15', '+56912345685', 'contacto@empresa.com', 'www.empresa.com');


INSERT INTO clientes (rut, nombre, direccion, telefono, correo, alta) VALUES ('11223344-5', 'Cliente A', 'Dirección 1', '+56998765432', 'clientea@example.com', true);
INSERT INTO clientes (rut, nombre, direccion, telefono, correo, alta) VALUES ('22334455-6', 'Cliente B', 'Dirección 2', '+56998765433', 'clienteb@example.com', true);
INSERT INTO clientes (rut, nombre, direccion, telefono, correo, alta) VALUES ('33445566-7', 'Cliente C', 'Dirección 3', '+56998765434', 'clientec@example.com', false);
INSERT INTO clientes (rut, nombre, direccion, telefono, correo, alta) VALUES ('44556677-8', 'Cliente D', 'Dirección 4', '+56998765435', 'cliented@example.com', true);
INSERT INTO clientes (rut, nombre, direccion, telefono, correo, alta) VALUES ('55667788-9', 'Cliente E', 'Dirección 5', '+56998765436', 'clientee@example.com', true);
INSERT INTO clientes (rut, nombre, direccion, telefono, correo, alta) VALUES ('66778899-0', 'Cliente F', 'Dirección 6', '+56998765437', 'clientef@example.com', false);
INSERT INTO clientes (rut, nombre, direccion, telefono, correo, alta) VALUES ('77889900-1', 'Cliente G', 'Dirección 7', '+56998765438', 'clienteg@example.com', true);
INSERT INTO clientes (rut, nombre, direccion, telefono, correo, alta) VALUES ('88990011-2', 'Cliente H', 'Dirección 8', '+56998765439', 'clienteh@example.com', true);
INSERT INTO clientes (rut, nombre, direccion, telefono, correo, alta) VALUES ('99001122-3', 'Cliente I', 'Dirección 9', '+56998765440', 'clientei@example.com', false);
INSERT INTO clientes (rut, nombre, direccion, telefono, correo, alta) VALUES ('00112233-4', 'Cliente J', 'Dirección 10', '+56998765441', 'clientej@example.com', true);
INSERT INTO clientes (rut, nombre, direccion, telefono, correo, alta) VALUES ('11223300-5', 'Cliente K', 'Dirección 11', '+56998765442', 'clientek@example.com', true);
INSERT INTO clientes (rut, nombre, direccion, telefono, correo, alta) VALUES ('22334411-6', 'Cliente L', 'Dirección 12', '+56998765443', 'clientel@example.com', true);
INSERT INTO clientes (rut, nombre, direccion, telefono, correo, alta) VALUES ('33445522-7', 'Cliente M', 'Dirección 13', '+56998765444', 'clientem@example.com', false);
INSERT INTO clientes (rut, nombre, direccion, telefono, correo, alta) VALUES ('44556633-8', 'Cliente N', 'Dirección 14', '+56998765445', 'clienten@example.com', true);
INSERT INTO clientes (rut, nombre, direccion, telefono, correo, alta) VALUES ('55667744-9', 'Cliente O', 'Dirección 15', '+56998765446', 'clienteo@example.com', true);
INSERT INTO clientes (rut, nombre, direccion, telefono, correo, alta) VALUES ('66778800-1', 'Cliente P', 'Dirección 16', '+56998765447', 'clientep@example.com', true);
INSERT INTO clientes (rut, nombre, direccion, telefono, correo, alta) VALUES ('77889911-2', 'Cliente Q', 'Dirección 17', '+56998765448', 'clienteq@example.com', false);


INSERT INTO herramientas (id_herramienta, nombre, precio_dia) VALUES ('H001', 'Taladro', '5000');
INSERT INTO herramientas (id_herramienta, nombre, precio_dia) VALUES ('H002', 'Sierra', '7000');
INSERT INTO herramientas (id_herramienta, nombre, precio_dia) VALUES ('H003', 'Amoladora', '6000');
INSERT INTO herramientas (id_herramienta, nombre, precio_dia) VALUES ('H004', 'Compresor', '10000');
INSERT INTO herramientas (id_herramienta, nombre, precio_dia) VALUES ('H005', 'Martillo', '3000');
INSERT INTO herramientas (id_herramienta, nombre, precio_dia) VALUES ('H006', 'Destornillador', '2000');
INSERT INTO herramientas (id_herramienta, nombre, precio_dia) VALUES ('H007', 'Cortadora', '8000');
INSERT INTO herramientas (id_herramienta, nombre, precio_dia) VALUES ('H008', 'Lijadora', '4000');
INSERT INTO herramientas (id_herramienta, nombre, precio_dia) VALUES ('H009', 'Taladro Percutor', '7500');
INSERT INTO herramientas (id_herramienta, nombre, precio_dia) VALUES ('H010', 'Soldadora', '12000');
INSERT INTO herramientas (id_herramienta, nombre, precio_dia) VALUES ('H011', 'Motosierra', '15000');
INSERT INTO herramientas (id_herramienta, nombre, precio_dia) VALUES ('H012', 'Cortadora de Cerámica', '9000');
INSERT INTO herramientas (id_herramienta, nombre, precio_dia) VALUES ('H013', 'Pistola de Calor', '5000');
INSERT INTO herramientas (id_herramienta, nombre, precio_dia) VALUES ('H014', 'Sopladora', '7000');
INSERT INTO herramientas (id_herramienta, nombre, precio_dia) VALUES ('H015', 'Desmalezadora', '8000');

INSERT INTO arriendos (folio, rut, id_herramienta, fecha, dias, valor_dia, garantia) VALUES ('A001', '11223344-5', 'H001', '2024-01-10 10:00:00', '3', '5000', '10000');
INSERT INTO arriendos (folio, rut, id_herramienta, fecha, dias, valor_dia, garantia) VALUES ('A002', '22334455-6', 'H002', '2024-01-11 11:00:00', '2', '7000', '15000');
INSERT INTO arriendos (folio, rut, id_herramienta, fecha, dias, valor_dia, garantia) VALUES ('A003', '33445566-7', 'H003', '2024-01-12 12:00:00', '5', '6000', '20000');
INSERT INTO arriendos (folio, rut, id_herramienta, fecha, dias, valor_dia, garantia) VALUES ('A004', '44556677-8', 'H004', '2024-01-13 13:00:00', '1', '10000', '30000');
INSERT INTO arriendos (folio, rut, id_herramienta, fecha, dias, valor_dia, garantia) VALUES ('A005', '55667788-9', 'H005', '2024-01-14 14:00:00', '3', '3000', '5000');
INSERT INTO arriendos (folio, rut, id_herramienta, fecha, dias, valor_dia, garantia) VALUES ('A006', '66778899-0', 'H006', '2024-01-15 15:00:00', '4', '2000', '4000');
INSERT INTO arriendos (folio, rut, id_herramienta, fecha, dias, valor_dia, garantia) VALUES ('A007', '77889900-1', 'H007', '2024-01-16 16:00:00', '2', '8000', '10000');
INSERT INTO arriendos (folio, rut, id_herramienta, fecha, dias, valor_dia, garantia) VALUES ('A008', '88990011-2', 'H008', '2024-01-17 17:00:00', '3', '4000', '8000');
INSERT INTO arriendos (folio, rut, id_herramienta, fecha, dias, valor_dia, garantia) VALUES ('A009', '99001122-3', 'H009', '2024-01-18 18:00:00', '1', '7500', '15000');
INSERT INTO arriendos (folio, rut, id_herramienta, fecha, dias, valor_dia, garantia) VALUES ('A010', '00112233-4', 'H010', '2024-01-19 19:00:00', '2', '12000', '20000');
INSERT INTO arriendos (folio, rut, id_herramienta, fecha, dias, valor_dia, garantia) VALUES ('A011', '11223300-5', 'H011', '2024-01-20 20:00:00', '3', '15000', '25000');
INSERT INTO arriendos (folio, rut, id_herramienta, fecha, dias, valor_dia, garantia) VALUES ('A012', '22334411-6', 'H012', '2024-01-21 21:00:00', '5', '9000', '30000');
INSERT INTO arriendos (folio, rut, id_herramienta, fecha, dias, valor_dia, garantia) VALUES ('A013', '33445522-7', 'H013', '2024-01-22 22:00:00', '4', '5000', '10000');
INSERT INTO arriendos (folio, rut, id_herramienta, fecha, dias, valor_dia, garantia) VALUES ('A014', '44556633-8', 'H014', '2024-01-23 23:00:00', '2', '7000', '15000');
INSERT INTO arriendos (folio, rut, id_herramienta, fecha, dias, valor_dia, garantia) VALUES ('A015', '55667744-9', 'H015', '2024-01-24 09:00:00', '4', '8000', '20000');

-- 1
select 
a.folio,
a.fecha,
a.dias,
a.valor_dia,
c.nombre as Nombre_Cliente,
c.rut as Rut_Cliente
from arriendos a 
inner join clientes c on c.rut = a.rut 
join herramientas h on h.id_herramienta = a.id_herramienta;

--2

select * 
from clientes c
left join arriendos a on a.rut = c.rut 
where a.rut is null;

-- 3
SELECT 
    rut, 
    nombre 
FROM 
    clientes

UNION ALL

SELECT 
    cast(rut as varchar), 
    nombre 
FROM 
    empresas;
	
-- 4
 select	
    EXTRACT(MONTH FROM a.fecha) AS mes,
    EXTRACT(year FROM a.fecha) AS anno,  
    count(a.folio) AS Cantidad_Arriendos
FROM 
    arriendos a
GROUP BY 
    a.fecha;