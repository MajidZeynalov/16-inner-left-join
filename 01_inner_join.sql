-- =========================================================
-- Oracle SQL Practice: INNER JOIN
-- Tables: hr.employees, hr.departments, hr.jobs, hr.locations
-- =========================================================

-- 1. Hər işçinin adı, soyadı və şöbə adını göstər
SELECT
    e.first_name,
    e.last_name,
    d.department_name
FROM hr.employees e
JOIN hr.departments d
    ON e.department_id = d.department_id;

-- 2. Hər işçinin adı və vəzifə adını göstər (jobs cədvəli)
SELECT
    e.first_name,
    e.last_name,
    j.job_title
FROM hr.employees e
JOIN hr.jobs j
    ON e.job_id = j.job_id;

-- 3. Yalnız IT şöbəsində işləyənləri tap (JOIN + WHERE)
SELECT
    e.first_name || ' ' || e.last_name AS ad_soyad,
    d.department_name
FROM hr.employees e
JOIN hr.departments d
    ON e.department_id = d.department_id
WHERE d.department_name = 'IT';

-- 4. İşçi, şöbə və şəhər adını birlikdə göstər (3 cədvəl)
SELECT
    e.first_name || ' ' || e.last_name AS ad_soyad,
    d.department_name,
    l.city
FROM hr.employees e
JOIN hr.departments d
    ON e.department_id = d.department_id
JOIN hr.locations l
    ON d.location_id = l.location_id;

-- 5. Maaşı 10000-dən çox olan işçilər və şöbələri
SELECT
    e.first_name,
    e.last_name,
    e.salary,
    d.department_name
FROM hr.employees e
JOIN hr.departments d
    ON e.department_id = d.department_id
WHERE e.salary > 10000;

-- 6. JOIN-li sorğuda COUNT(*) yazıb 107 ilə müqayisə et
-- INNER JOIN yalnız department_id-si olan işçiləri sayır (106 sətir — 1 işçinin department_id-si NULL-dır)
SELECT COUNT(*) AS inner_join_sayi
FROM hr.employees e
JOIN hr.departments d
    ON e.department_id = d.department_id;

-- Bütün işçilərin ümumi sayı (107 sətir)
SELECT COUNT(*) AS butun_isciler
FROM hr.employees;
