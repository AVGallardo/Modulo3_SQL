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
