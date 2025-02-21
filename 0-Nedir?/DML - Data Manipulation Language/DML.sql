--Veri Manipülasyonu (DML - Data Manipulation Language): SELECT, INSERT, UPDATE, DELETE komutları ile veriler üzerinde işlemler yapar.

--SELECT: Veritabanından veri sorgulamak için kullanılır.

SELECT * FROM tablo_adı;
--Bu komut, belirtilen tablodaki tüm satırları ve sütunları getirir.

--INSERT: Yeni veri eklemek için kullanılır.

INSERT INTO tablo_adı (sütun1, sütun2, sütun3)
VALUES (değer1, değer2, değer3);


--UPDATE: Var olan verileri güncellemek için kullanılır.

UPDATE tablo_adı
SET sütun1 = değer1, sütun2 = değer2
WHERE koşul;


--DELETE: Veri silmek için kullanılır.

DELETE FROM tablo_adı WHERE koşul;