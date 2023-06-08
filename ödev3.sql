-- ********************** Isciler Tablosundan ************************

-- 1) Isme gore toplam maaslari bulun
select isim,sum(maas)
from isciler
group by isim;

-- 2) Sehre gore toplam isci sayisini bulun
select sehir,count(isim)
from isciler
group by sehir;

-- 3) Sehre gore toplam isci sayisini, buyukten kucuge yazdiriniz 
select sehir,count(isim)
from isciler
group by sehir
order by count(isim) desc;

-- 4) Sirketlere gore maasi 5000 liradan fazla olan isci sayisini bulun
select sirket,count(isim)
from isciler
where maas>5000
group by sirket;

-- 5) Her sirket icin Min ve Max maasi bulun
select sirket,min(maas), max(maas)
from isciler
group by sirket;

select*from isciler;








