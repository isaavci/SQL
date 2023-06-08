-- ************************ Kelimeler Tablosundan *******************************
CREATE TABLE kelimeler
    (
        id int UNIQUE,
        kelime VARCHAR(50) NOT NULL,
        harf_sayisi int
    );
    
    INSERT INTO kelimeler VALUES 
    (1001, 'hot', 3),
	(1002, 'hat', 3),
	(1003, 'hit', 3),
	(1004, 'hbt', 3),
	(1005, 'hct', 3),
    (1006, 'adem', 4),
    (1007, 'selim', 5),
    (1008, 'yusuf', 5),
    (1009, 'hip', 3),
    (1010, 'HOT', 3),
    (1011, 'hOt', 3),
    (1012, 'h9t', 3),
    (1013, 'hoot', 4),
    (1014, 'haaat', 5),
    (1015, 'hooooot', 7),
	(1016, 'h-t', 3),
    (1017, 'h?t', 3),
    (1018, 'hOOOt', 5),
    (1019, 'O', 1),
    (1020, 'hoo', 3);

SELECT * FROM kelimeler;
/*-------------------------------------------------------------------------
Q1: 3 harfli kelimeleri listeleyin
---------------------------------------------------------------------------*/
select kelime
from kelimeler
where regexp_like(kelime,'^[a-z][a-z][a-z]$','i');

select kelime
from kelimeler
where kelime like '___';

/*-------------------------------------------------------------------------
Q2: En az 3 harfli kelimeleri listeleyin
---------------------------------------------------------------------------*/
select kelime,id
from kelimeler
where regexp_like(kelime,'^[a-z][a-z][a-z]','i');

select kelime,id
from kelimeler
where kelime like '___%';

/*-------------------------------------------------------------------------
Q3: H ile baslayip t ile biten kelimeleri listeleyin
---------------------------------------------------------------------------*/
select kelime
from kelimeler
where kelime like'h%t';

select kelime
from kelimeler
WHERE REGEXP_LIKE (kelime, '^H.*T$', 'i');

/*-------------------------------------------------------------------------
Q4: H ile baslayip t ile biten kelimeleri case sensitive listeleyin
---------------------------------------------------------------------------*/
select kelime
from kelimeler
WHERE REGEXP_LIKE (kelime, '^H.*T$', 'c');
/*-------------------------------------------------------------------------
Q5: H ile baslayip T ile biten 3 harfli kelimeleri case sensitive listeleyin
---------------------------------------------------------------------------*/
select kelime
from kelimeler
WHERE REGEXP_LIKE (kelime, '^H[!-~]T$', 'c');

/*-------------------------------------------------------------------------
Q6: 3 ya da daha az karakterli kelimeleri listeleyin
---------------------------------------------------------------------------*/
select kelime
from kelimeler
where length(kelime)<=3;

SELECT kelime
FROM kelimeler
WHERE kelime NOT LIKE '____%';

/*-------------------------------------------------------------------------
Q7: id'si 8 rakamini iceren kelimeleri listeleyin
---------------------------------------------------------------------------*/
select kelime,id
from kelimeler
where id like'%8%';
