--1.
select column_name, data_type, character_maximum_length chml, numeric_precision np
from information_schema.columns
where table_name = 'filmy';
--2.
CREATE TABLE KSIAZKI (
	ID_KSIAZKI INTEGER PRIMARY KEY,
	TYTUL VARCHAR(30),
	AUTOR VARCHAR(30),
	ROK_WYDANIA INTEGER
);
--3.
INSERT INTO KSIAZKI (ID_KSIAZKI, TYTUL, AUTOR, ROK_WYDANIA)
VALUES
(1, 'Pan Tadeusz', 'Adam Mickiewicz', 1995),
(2, 'Krzyzacy', 'Henryk Sienkiewicz', 1990);
--4.
SELECT 
	COLUMN_NAME, 
	DATA_TYPE, 
	character_maximum_length chml, 
	numeric_precision np
 FROM information_schema.columns
WHERE TABLE_NAME = 'ksiazki';
--5.
DROP TABLE ksiazki;
DROP TABLE osoby;
--6.
CREATE TABLE osoby (
	PESEL CHAR(11) PRIMARY KEY CHECK (LENGTH(PESEL) = 11),
	IMIE VARCHAR(15) NOT NULL,
	NAZWISKO VARCHAR(15) NOT NULL,
	DATA_URODZENIA DATE,
	CHECK (SUBSTRING((EXTRACT(YEAR FROM data_urodzenia))::varchar,3,2) = LEFT(pesel, 2)),
	CHECK (SUBSTRING(data_urodzenia::varchar,6,2) = SUBSTRING(pesel, 3, 2)),
	CHECK (SUBSTRING(data_urodzenia::varchar,9,2) = SUBSTRING(pesel, 5, 2))
);
--7.
INSERT INTO osoby (pesel, imie, nazwisko, data_urodzenia)
VALUES
('39090100001','Jan', 'Kowalski', '1939-09-01' ),
('750218','Adam','Nowak','1975-03-18'),	--pesel LENGTH, month != pesel
('75021800123','Adam','Nowak','1975-02-20'), -- day != pesel
('75021800123','Adam','Nowak','1975-02-18') -- not unique pesel,
--8.


