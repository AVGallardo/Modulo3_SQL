CREATE TABLE "orden" (
  "id_orden" varchar PRIMARY KEY,
  "fecha" timestamp,
  "id_cliente" varchar,
  "id_articulo" varchar,
  "cantidad" integer
);

CREATE TABLE "cliente" (
  "id_cliente" varchar PRIMARY KEY,
  "nombre" varchar,
  "ciudad" varchar
);

CREATE TABLE "articulo" (
  "id_articulo" varchar PRIMARY KEY,
  "nombre" varchar,
  "precio" varchar
);

ALTER TABLE "orden" ADD FOREIGN KEY ("id_cliente") REFERENCES "cliente" ("id_cliente");

ALTER TABLE "orden" ADD FOREIGN KEY ("id_articulo") REFERENCES "articulo" ("id_articulo");
