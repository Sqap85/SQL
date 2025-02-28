-- Mevcut tarih ve saati getirir
SELECT SYSDATE FROM DUAL;

-- Çalışanların işe giriş tarihinden 60 gün sonrasını hesaplar
SELECT last_name, hire_date + 60 
FROM employees;

-- Çalışanların işe giriş tarihinden bugüne kadar geçen hafta sayısını hesaplar
SELECT last_name, (SYSDATE – hire_date)/7 
FROM employees;

-- Bir çalışanın önceki işinde kaç yıl çalıştığını hesaplar
SELECT employee_id, (end_date – start_date)/365 AS "Tenure in last job" 
FROM job_history;

-- Çalışanların işe giriş tarihlerine göre bazı tarih fonksiyonları kullanımı
SELECT 
    employee_id, 
    hire_date, 
    ROUND(MONTHS_BETWEEN(SYSDATE, hire_date)) AS TENURE, -- İşe girişten itibaren geçen ayları yuvarlar
    ADD_MONTHS(hire_date, 6) AS REVIEW, -- İşe giriş tarihine 6 ay ekler
    NEXT_DAY(hire_date, 'FRIDAY') AS NEXT_FRIDAY, -- İşe giriş tarihinden sonraki ilk Cuma gününü bulur
    LAST_DAY(hire_date) AS LAST_DAY_OF_MONTH -- İşe giriş tarihinin ait olduğu ayın son gününü döndürür
FROM employees
WHERE MONTHS_BETWEEN(SYSDATE, hire_date) > 36; -- İşe girişten itibaren 36 aydan fazla süre geçmiş olanları filtreler

-- SYSDATE'in ay ve yıl bazında yuvarlanmış ve kesilmiş hallerini gösterir
SELECT 
    ROUND(SYSDATE, 'MONTH') AS ROUNDED_TO_MONTH, -- Ay bazında yuvarlama (Örn: 23 Ekim 2013 -> 1 Kasım 2013)
    ROUND(SYSDATE, 'YEAR') AS ROUNDED_TO_YEAR, -- Yıl bazında yuvarlama (Örn: 23 Ekim 2013 -> 1 Ocak 2014)
    TRUNC(SYSDATE, 'MONTH') AS TRUNCATED_TO_MONTH, -- Ay bazında kesme (Örn: 23 Ekim 2013 -> 1 Ekim 2013)
    TRUNC(SYSDATE, 'YEAR') AS TRUNCATED_TO_YEAR -- Yıl bazında kesme (Örn: 23 Ekim 2013 -> 1 Ocak 2013)
FROM DUAL;
