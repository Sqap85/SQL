-- Tablo oluşturuluyor: "employees" tablosu
CREATE TABLE employees (
    -- employee_id, birincil anahtar olarak belirleniyor. Her çalışan için benzersiz olacak.
    employee_id NUMBER PRIMARY KEY,  -- Primary Key: Her kaydın benzersiz olması sağlanır.
    
    -- first_name ve last_name, boş olamaz (NOT NULL). Çalışanın adı ve soyadı olmalı.
    first_name VARCHAR2(50) NOT NULL,  -- NOT NULL: Değer boş olamaz.
    last_name VARCHAR2(50) NOT NULL,   -- NOT NULL: Değer boş olamaz.
    
    -- salary, belirli bir aralıkla sınırlandırılıyor. Bu değer 1000 ile 10000 arasında olmalı.
    salary NUMBER(10, 2),  -- salary, sayısal bir değer olacak.
    CHECK (salary >= 1000 AND salary <= 10000),  -- CHECK: salary değeri 1000 ile 10000 arasında olmalı.
    
    -- department_id, başka bir tabloya referans verecek. FOREIGN KEY kısıtlaması kullanılıyor.
    department_id NUMBER,  -- department_id, department tablosunun id'sine referans olacak.
    FOREIGN KEY (department_id) REFERENCES departments(department_id)  -- FOREIGN KEY: department_id, departments tablosundaki department_id'yi referans alır.
);

-- "departments" tablosu, departmanların bilgilerini tutar.
CREATE TABLE departments (
    -- department_id, birincil anahtar olarak belirleniyor.
    department_id NUMBER PRIMARY KEY,  -- Primary Key: Her departman için benzersiz olacak.
    department_name VARCHAR2(100) NOT NULL,  -- Departman adı boş olamaz.
    UNIQUE (department_name)  -- UNIQUE: Aynı departman adı birden fazla olamaz.
);

-- "employees" tablosundaki department_id, "departments" tablosundaki department_id'yi referans alır.
-- Bu şekilde, bir çalışanın belirli bir departmanla ilişkilendirilmesini sağlarız.
