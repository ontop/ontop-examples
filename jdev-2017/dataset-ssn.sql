DROP SCHEMA IF EXISTS "uni1";
DROP SCHEMA IF EXISTS "uni2";

CREATE SCHEMA "uni1";

CREATE TABLE "uni1"."student" (
"s_id" INT NOT NULL PRIMARY KEY,
"first_name" VARCHAR(40) NOT NULL,
"last_name" VARCHAR(40) NOT NULL,
"ssn" VARCHAR(40) NOT NULL UNIQUE,
);

CREATE TABLE "uni1"."academic" (
"a_id" INT NOT NULL PRIMARY KEY,
"first_name" VARCHAR(40) NOT NULL,
"last_name" VARCHAR(40) NOT NULL,
"position" INT NOT NULL,
"ssn" VARCHAR(40) NOT NULL UNIQUE
);

CREATE INDEX ON "uni1"."academic" ("position");

CREATE TABLE "uni1"."course" (
"c_id" INT NOT NULL PRIMARY KEY,
"title" VARCHAR(100) NOT NULL
);

CREATE TABLE "uni1"."teaching" (
"c_id" INT NOT NULL,
"a_id" INT NOT NULL
);

CREATE INDEX ON "uni1"."teaching" ("c_id");
CREATE INDEX ON "uni1"."teaching" ("a_id");

CREATE TABLE "uni1"."course-registration" (
"c_id" INT NOT NULL,
"s_id" INT NOT NULL
);

CREATE INDEX ON "uni1"."course-registration" ("c_id");
CREATE INDEX ON "uni1"."course-registration" ("s_id");

ALTER TABLE "uni1"."teaching"
ADD FOREIGN KEY ("c_id") REFERENCES "uni1"."course"("c_id");

ALTER TABLE "uni1"."teaching"
ADD FOREIGN KEY ("a_id") REFERENCES "uni1"."academic"("a_id");

ALTER TABLE "uni1"."course-registration"
ADD FOREIGN KEY ("c_id") REFERENCES "uni1"."course"("c_id");

ALTER TABLE "uni1"."course-registration"
ADD FOREIGN KEY ("s_id") REFERENCES "uni1"."student"("s_id");


CREATE SCHEMA "uni2";

CREATE TABLE "uni2"."person" (
"pid" INT NOT NULL PRIMARY KEY,
"fname" VARCHAR(40) NOT NULL,
"lname" VARCHAR(40) NOT NULL,
"status" INT NOT NULL,
"ssn" VARCHAR(40) NOT NULL UNIQUE
);

CREATE INDEX ON "uni2"."person" ("status");

CREATE TABLE "uni2"."course" (
"cid" INT NOT NULL PRIMARY KEY,
"lecturer" INT NOT NULL,
"lab_teacher" INT NOT NULL,
"topic" VARCHAR(100) NOT NULL
);

CREATE INDEX ON "uni2"."course" ("lecturer");
CREATE INDEX ON "uni2"."course" ("lab_teacher");

CREATE TABLE "uni2"."registration" (
"pid" INT NOT NULL,
"cid" INT NOT NULL
);

CREATE INDEX ON "uni2"."registration" ("pid");
CREATE INDEX ON "uni2"."registration" ("cid");

ALTER TABLE "uni2"."course"
ADD FOREIGN KEY ("lecturer") REFERENCES "uni2"."person"("pid");

ALTER TABLE "uni2"."course"
ADD FOREIGN KEY ("lab_teacher") REFERENCES "uni2"."person"("pid");

ALTER TABLE "uni2"."registration"
ADD FOREIGN KEY ("pid") REFERENCES "uni2"."person"("pid");

ALTER TABLE "uni2"."registration"
ADD FOREIGN KEY ("cid") REFERENCES "uni2"."course"("cid");

INSERT INTO "uni1"."student"
("s_id","first_name","last_name","ssn") VALUES
(1,'Mary','Smith', 'smith-282278'),
(2,'John','Doe', 'doe-12212821'),
(3, 'Franck', 'Combs', 'combs-982187'),
(4, 'Billy', 'Hinkley', 'hinkley-081728'),
(5, 'Alison', 'Robards', 'robards-1192721');

INSERT INTO "uni1"."academic"
("a_id","first_name","last_name", "position", "ssn") VALUES
(1,'Anna','Chambers', 1, 'chambers-192710'),
(2,'Edward','May', 9, 'may-1271982'),
(3, 'Rachel', 'Ward', 8, 'ward-987183'),
(4, 'Priscilla', 'Hildr', 2, 'hildr-2819103'),
(5, 'Zlata', 'Richmal', 3, 'richmal-281926'),
(6, 'Nathaniel', 'Abolfazl', 4, 'abolfazl-811928'),
(7, 'Sergei', 'Elian', 5, 'elian-102911'),
(8, 'Alois', 'Jayant', 6, 'jayant-198731'),
(9, 'Torborg', 'Chernobog',7, 'chernobog-12819'),
(10, 'Udi', 'Heinrike', 8, 'heinrike-205827'),
(11, 'Alvena', 'Merry', 9, 'merry-98821'),
(12, 'Kyler', 'Kerny', 1, 'kerny-298127'),
(13, 'Gerard', 'Cosimo', 2, 'cosimo-298172'),
(14, 'Karine', 'Attilio', 3, 'attilio-018722');

INSERT INTO "uni1"."course" ("c_id", "title") VALUES
(1234, 'Linear Algebra'),
(1235, 'Analysis'),
(1236, 'Operating Systems'),
(1500, 'Data Mining'),
(1501, 'Theory of Computing'),
(1502, 'Research Methods');

INSERT INTO "uni1"."teaching" ("c_id", "a_id") VALUES
(1234, 1),
(1234, 2),
(1235, 1),
(1235, 3),
(1236, 4),
(1236, 8),
(1236, 9),
(1500, 12),
(1500, 2),
(1501, 12),
(1501, 14),
(1501, 7),
(1502, 13);

INSERT INTO "uni1"."course-registration" ("c_id","s_id") VALUES
(1234, 1),
(1234, 2),
(1234, 3),
(1235, 1),
(1235, 2),
(1236, 1),
(1236, 3),
(1500, 4),
(1500, 5),
(1501, 4),
(1502, 5);

INSERT INTO "uni2"."person"
("pid", "fname", "lname", "status", "ssn") VALUES
(1, 'Zak', 'Lane', 8, 'lane-298172'),
(2, 'Mattie', 'Moses', 1, 'moses-108721'),
(3, 'Céline', 'Mendez', 2, 'mendez-122873'),
(4, 'Rachel', 'Ward', 9, 'ward-987183'), -- external teacher uni1
(5, 'Alvena', 'Merry', 3, 'merry-98821'), -- postDoc uni1
(6, 'Victor', 'Scott', 7, 'scott-098723'),
(7, 'Kellie', 'Griffin', 8, 'griffin-018722'),
(8, 'Sueann', 'Samora', 9, 'samora-192871'),
(9, 'Billy', 'Hinkley', 2, 'hinkley-081728'), -- grad student uni1
(10, 'Larry', 'Alfaro', 1, 'alfaro-98217'),
(11, 'John', 'Sims', 4, 'sims-298732');

INSERT INTO "uni2"."course"
("cid", "lecturer", "lab_teacher", "topic") VALUES
(1, 1, 3, 'Information security'),
(2, 8, 5, 'Software factory'),
(3, 7, 8, 'Software process management'),
(4, 7, 9, 'Introduction to programming'),
(5, 1, 8, 'Discrete mathematics and logic'),
(6, 7, 4, 'Intelligent Systems');

INSERT INTO "uni2"."registration" ("pid","cid") VALUES
(2, 1),
(10, 4),
(2, 5),
(10, 4),
(3, 2),
(3, 3),
(9, 2);
