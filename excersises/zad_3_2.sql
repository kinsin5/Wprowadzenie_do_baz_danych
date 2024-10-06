--1.
SELECT rok_produkcji, AVG(cena) AS "avg" FROM filmy
GROUP BY rok_produkcji
ORDER BY rok_produkcji DESC;
--2.
SELECT MAX(cena) AS "max" FROM filmy;
--3.
SELECT COUNT(id_filmu) AS "count" FROM filmy
WHERE rok_produkcji = 1984;