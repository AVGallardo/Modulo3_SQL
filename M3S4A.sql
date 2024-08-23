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