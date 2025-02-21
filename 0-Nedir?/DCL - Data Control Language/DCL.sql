--Veri Kontrolü (DCL - Data Control Language): GRANT, REVOKE komutlarıyla erişim izinlerini yönetir. DCL komutları, veritabanı kullanıcılarının veritabanı nesnelerine erişimini kontrol eder.

--1. GRANT:
--Bu komut, kullanıcılara belirli izinler verir. İzinler, bir tabloya veri eklemek, verileri güncellemek, veritabanında sorgular yapmak vb. işlemleri kapsar.

--Kullanıcıya izin verme:
GRANT SELECT, INSERT, UPDATE ON tablo_adı TO kullanıcı_adı;
--Bu komut, belirttiğiniz kullanıcıya SELECT, INSERT ve UPDATE izinlerini verir. Ayrıca belirli bir veritabanına da izin verebilirsiniz:


GRANT ALL PRIVILEGES ON veritabani_adı.* TO 'kullanıcı_adı'@'localhost';
--Bu komut, kullanıcının veritabanındaki tüm işlemleri yapmasına izin verir.

--GRANT ile rol atama: Bir kullanıcıya rol atayarak, o rolün izinlerine sahip olmasını sağlayabilirsiniz:

GRANT rol_adı TO kullanıcı_adı;


--2. REVOKE:
--Bu komut, daha önce verilmiş olan izinleri geri alır. Yani, bir kullanıcının belirli bir tabloya veya veritabanına erişimini engellemek için kullanılır.

--İzin geri alma:
REVOKE SELECT, INSERT ON tablo_adı FROM kullanıcı_adı;
--Bu komut, belirtilen kullanıcıdan SELECT ve INSERT izinlerini geri alır.

--Tüm izinleri geri alma: Eğer tüm izinleri geri almak isterseniz:
REVOKE ALL PRIVILEGES ON veritabani_adı.* FROM 'kullanıcı_adı'@'localhost';