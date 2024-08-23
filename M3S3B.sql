CREATE TABLE "departamentos" (
  "id_departamento" varchar PRIMARY KEY,
  "id_articulo" varchar,
  "nombre" integer
);

CREATE TABLE "trabajadores" (
  "id_trabajador" varchar PRIMARY KEY,
  "id_departamento" varchar,
  "nombre" varchar,
  "fecha_nacimiento" timestamp,
  "correo" varchar,
  "edad" varchar,
  "id_supervisor" varchar
);

CREATE TABLE "proyectos" (
  "id_proyecto" varchar PRIMARY KEY,
  "id_departamento" varchar,
  "nombre" varchar
);

CREATE TABLE "trabajadores_proyectos" (
  "id_trabajador_pro" varchar PRIMARY KEY,
  "id_proyecto" varchar,
  "id_trabajador" varchar,
  "nombre" varchar
);

ALTER TABLE "trabajadores" ADD FOREIGN KEY ("id_departamento") REFERENCES "departamentos" ("id_departamento");

ALTER TABLE "proyectos" ADD FOREIGN KEY ("id_proyecto") REFERENCES "departamentos" ("id_departamento");

ALTER TABLE "trabajadores_proyectos" ADD FOREIGN KEY ("id_trabajador") REFERENCES "trabajadores" ("id_trabajador");

ALTER TABLE "trabajadores_proyectos" ADD FOREIGN KEY ("id_proyecto") REFERENCES "proyectos" ("id_proyecto");

ALTER TABLE "trabajadores" ADD FOREIGN KEY ("id_trabajador") REFERENCES "trabajadores" ("id_supervisor");
