CREATE SCHEMA "uni1";

CREATE TABLE "uni1"."student" (
"s_id" INT NOT NULL PRIMARY KEY,
"first_name" VARCHAR(40) NOT NULL,
"last_name" VARCHAR(40) NOT NULL
);

CREATE TABLE "uni1"."academic" (
"a_id" INT NOT NULL PRIMARY KEY,
"first_name" VARCHAR(40) NOT NULL,
"last_name" VARCHAR(40) NOT NULL,
"position" INT NOT NULL
);

CREATE TABLE "uni1"."course" (
"c_id" INT NOT NULL PRIMARY KEY,
"title" VARCHAR(100) NOT NULL
);

CREATE TABLE "uni1"."teaching" (
"c_id" INT NOT NULL,
"a_id" INT NOT NULL
);

ALTER TABLE "uni1"."teaching"
ADD FOREIGN KEY ("c_id") REFERENCES "uni1"."course"("c_id");

ALTER TABLE "uni1"."teaching"
ADD FOREIGN KEY ("a_id") REFERENCES "uni1"."academic"("a_id");


CREATE SCHEMA "uni2";

CREATE TABLE "uni2"."person" (
"pid" INT NOT NULL PRIMARY KEY,
"fname" VARCHAR(40) NOT NULL,
"lname" VARCHAR(40) NOT NULL,
"status" INT NOT NULL
);

CREATE TABLE "uni2"."course" (
"cid" INT NOT NULL PRIMARY KEY,
"lecturer" INT NOT NULL,
"lab_teacher" INT NOT NULL,
"topic" VARCHAR(100) NOT NULL
);

ALTER TABLE "uni2"."course"
ADD FOREIGN KEY ("lecturer") REFERENCES "uni2"."person"("pid");

ALTER TABLE "uni2"."course"
ADD FOREIGN KEY ("lab_teacher") REFERENCES "uni2"."person"("pid");



INSERT INTO "uni1"."student"
("s_id","first_name","last_name") VALUES
(1,'Mary','Smith'),
(2,'John','Doe');

INSERT INTO "uni1"."academic"
("a_id","first_name","last_name", "position") VALUES
(1,'Anna','Chambers', 1),
(2,'Edward','May', 9),
(3, 'Rachel', 'Ward', 8);

INSERT INTO "uni1"."course" ("c_id", "title") VALUES
(1234, 'Linear Algebra');

INSERT INTO "uni1"."teaching" ("c_id", "a_id") VALUES
(1234, 1),
(1234, 2);

INSERT INTO "uni2"."person"
("pid", "fname", "lname", "status") VALUES
(1, 'Zak', 'Lane', 8),
(2, 'Mattie', 'Moses', 1),
(3, 'Céline', 'Mendez', 2);

INSERT INTO "uni2"."course"
("cid", "lecturer", "lab_teacher", "topic") VALUES
(1, 1, 3, 'Information security');
