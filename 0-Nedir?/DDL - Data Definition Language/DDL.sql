--Veri Tanımlama (DDL - Data Definition Language): CREATE, ALTER, DROP gibi komutlarla veritabanı ve tabloların yapısını tanımlar.DDL komutları, veritabanı yapısındaki değişiklikleri yönetir, ancak veriler üzerinde işlem yapmaz 

--CREATE: Yeni bir veritabanı veya tablo oluşturmak için kullanılır.

--Veritabanı oluşturma:
CREATE DATABASE veritabani_adi;

--Tablo oluşturma:
CREATE TABLE tablo_adi (
  sütun1 veri_türü,
  sütun2 veri_türü,
  ...
);

--ALTER: Var olan bir veritabanı veya tabloyu değiştirmek için kullanılır. Örneğin, yeni sütun eklemek, sütun silmek veya sütun özelliklerini değiştirmek gibi.

--Sütun eklemek:
ALTER TABLE tablo_adi
ADD sütun_adi veri_türü;

--Sütun silmek:
ALTER TABLE tablo_adi
DROP COLUMN sütun_adi;

--Sütun adını değiştirmek:

ALTER TABLE tablo_adi
RENAME COLUMN eski_sütun_adi TO yeni_sütun_adi;


--DROP: Veritabanı veya tabloyu silmek için kullanılır.

--Veritabanı silmek:
DROP DATABASE veritabani_adi;

--Tabloyu silmek:
DROP TABLE tablo_adi;


--TRUNCATE: Tabloyu silmeden, içindeki verileri hızlıca temizler. Bu komut tabloyu geri almayı mümkün kılmaz (geri dönüşümsüzdür).

TRUNCATE TABLE tablo_adi;


--RENAME: Bir tabloyu veya sütunu yeniden adlandırmak için kullanılır.

--Tabloyu yeniden adlandırmak:
RENAME tablo_adı TO yeni_tablo_adı;

--Sütunu yeniden adlandırmak:
ALTER TABLE tablo_adı
RENAME COLUMN eski_sütun_adı TO yeni_sütun_adı;


--COMMENT: Veritabanı, tablo veya sütunlar hakkında yorum eklemek için kullanılır.

--Tabloya yorum eklemek:
COMMENT ON TABLE tablo_adı IS 'Bu tablonun açıklaması';

--Sütuna yorum eklemek:
COMMENT ON COLUMN tablo_adı.sütun_adı IS 'Bu sütunun açıklaması';


--CASCADE: Bir nesneyi (tablo, sütun vs.) silerken, ona bağlı diğer nesneleri de otomatik olarak silmek için kullanılır. Genelde DROP komutlarıyla birlikte kullanılır.

--Tabloyu ve ilişkili kısıtlamaları silmek:
DROP TABLE tablo_adı CASCADE;


--CONSTRAINT: Tabloya kısıtlamalar eklemek için kullanılır. Kısıtlamalar, verinin doğruluğunu ve bütünlüğünü sağlar.

--PRIMARY KEY: Bir sütunun her satır için benzersiz olmasını sağlar.
CREATE TABLE tablo_adı (
  sütun1 veri_türü PRIMARY KEY,
  sütun2 veri_türü,
  ...
);

--FOREIGN KEY: Bir tablodaki sütunun başka bir tablodaki sütuna bağlanmasını sağlar.
CREATE TABLE tablo_adı (
  sütun1 veri_türü,
  sütun2 veri_türü,
  CONSTRAINT fk_sütun FOREIGN KEY (sütun2) REFERENCES başka_tablo(sütun1)
);
-- Açıklamalar:
-- Yabancı anahtar (foreign key) ilişkisi, bir tablodaki bir sütunun başka bir tablodaki bir sütunla bağlantısını kurar.
-- Bu bağlantı, veri bütünlüğünü sağlamak amacıyla kullanılır, yani bir tabloda yer alan bir sütundaki değer yalnızca başka bir tabloda var olan bir değeri işaret edebilir.
-- Bu durumda, 'tablo_adı' tablosundaki 'sütun2' sütunu, 'başka_tablo' tablosundaki 'sütun1' sütunundaki değeri referans alır.

-- Örnek:
-- Diyelim ki 'employees' tablosu var ve her çalışan bir departmana bağlı. 'departments' tablosunda ise her departmanın benzersiz bir ID'si var.
-- Bu durumda, 'employees' tablosundaki 'department_id' sütunu, 'departments' tablosundaki 'id' sütununu referans alır:



--INDEX: Tablo üzerinde hızlı sorgulama yapmak için bir indeks oluşturur.
CREATE INDEX index_adı
ON tablo_adı(sütun_adı);

--INDEX komutları, özellikle büyük veritabanlarında sorgu hızını artırmak için kullanılır.

