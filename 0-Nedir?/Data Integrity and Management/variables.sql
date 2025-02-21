-- 1. Sayısal Veri Tipleri
NUMBER(p,s) -- Kesirli veya tam sayı değerleri saklar. p: Toplam basamak sayısı, s: Ondalık basamak sayısı.
BINARY_FLOAT -- 32-bit kayan nokta sayısı, yüksek hassasiyet gerektirmeyen işlemler için kullanılır.
BINARY_DOUBLE -- 64-bit kayan nokta sayısı, daha hassas hesaplamalar için kullanılır.

-- 2. Karakter Veri Tipleri
CHAR(n) -- Sabit uzunlukta karakter dizileri saklar. Maksimum 2000 bayt.
VARCHAR2(n) -- Değişken uzunlukta karakter dizileri saklar. Maksimum 4000 bayt.
NCHAR(n) -- Sabit uzunlukta Unicode karakter dizileri saklar.
NVARCHAR2(n) -- Değişken uzunlukta Unicode karakter dizileri saklar.

-- 3. Tarih/Zaman Veri Tipleri
DATE -- Tarih ve saat bilgisini saklar (YYYY-MM-DD HH24:MI:SS formatında).
TIMESTAMP -- Mikro saniye hassasiyetinde tarih ve saat saklar.
TIMESTAMP WITH TIME ZONE -- Zaman dilimi bilgisini de içeren zaman damgası.
TIMESTAMP WITH LOCAL TIME ZONE -- Oturumun zaman dilimine göre değişen zaman damgası.
INTERVAL YEAR TO MONTH -- Yıl ve ay farklarını saklar.
INTERVAL DAY TO SECOND -- Gün, saat, dakika, saniye farklarını saklar.

-- 4. LOB (Large Object) Veri Tipleri
BLOB -- Büyük boyutlu ikili veri (resim, video, PDF vb.) saklamak için kullanılır.
CLOB -- Büyük boyutlu karakter verilerini saklamak için kullanılır.
NCLOB -- Unicode karakter veri depolamak için kullanılır.
BFILE -- Harici dosyaların saklanmasını sağlar, veritabanının dışında depolanan dosyalara referans içerir.

-- 5. Diğer Veri Tipleri
RAW(n) -- İkili veri (binary) saklamak için kullanılır. Maksimum 2000 bayt.
LONG -- Büyük boyutlu karakter dizileri saklar, ancak kullanımı eski olduğu için CLOB tercih edilir.
ROWID -- Veritabanındaki bir satırın fiziksel adresini saklar.
UROWID -- Evrensel satır kimliği, indeks-organize tablolar için kullanılır.
