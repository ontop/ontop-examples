CREATE TABLE canIRIten
(canonical serial NOT NULL,
provenance serial NOT NULL,
unique21 integer,
unique22 integer,
unique23 integer);

CREATE TABLE canIRIthirty
(canonical serial NOT NULL,
provenance serial NOT NULL,
unique21 integer,
unique22 integer,
unique23 integer);

CREATE TABLE canIRIsixty
(canonical serial NOT NULL,
provenance serial NOT NULL,
unique21 integer,
unique22 integer,
unique23 integer);

ALTER TABLE canIRIten ADD PRIMARY KEY (canonical, provenance);
ALTER TABLE canIRIthirty ADD PRIMARY KEY (canonical, provenance);
ALTER TABLE canIRIsixty ADD PRIMARY KEY (canonical, provenance);




