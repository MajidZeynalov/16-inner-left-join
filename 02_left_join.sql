-- =========================================================
-- Oracle SQL Practice: LEFT JOIN
-- Tables: hr.employees, hr.departments
-- =========================================================

-- 7. Bütün 107 işçini şöbə adı ilə göstər (heç kim itməsin)
SELECT
    e.first_name,
    e.last_name,
    d.department_name
FROM hr.employees e
LEFT JOIN hr.departments d
    ON e.department_id = d.department_id;

-- 8. Şöbəsi olmayan işçini tap (WHERE department_id IS NULL)
SELECT
    e.first_name,
    e.last_name,
    d.department_name
FROM hr.employees e
LEFT JOIN hr.departments d
    ON e.department_id = d.department_id
WHERE e.department_id IS NULL;

-- 9. Bütün şöbələri işçi sayı ilə göstər (boş şöbələr də görünsün)
SELECT
    d.department_name,
    COUNT(e.employee_id) AS isci_sayi
FROM hr.departments d
LEFT JOIN hr.employees e
    ON d.department_id = e.department_id
GROUP BY d.department_name
ORDER BY isci_sayi DESC;

-- 10. Heç bir işçisi olmayan şöbələri sadala
SELECT d.department_name
FROM hr.departments d
LEFT JOIN hr.employees e
    ON d.department_id = e.department_id
WHERE e.employee_id IS NULL;

-- Bonus: İşçinin şöbə adını göstər, şöbəsi olmayanlar üçün "təyin edilməyib" yaz
SELECT
    e.first_name,
    e.last_name,
    NVL(d.department_name, 'təyin edilməyib') AS sobe_adi
FROM hr.employees e
LEFT JOIN hr.departments d
    ON e.department_id = d.department_id;
