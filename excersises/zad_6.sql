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

