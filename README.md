# 16-sql-joins

Oracle SQL practice — INNER JOIN & LEFT JOIN (hr schema)

## 📂 Fayllar

| Fayl | Mövzu |
|---|---|
| `01_inner_join.sql` | INNER JOIN — employees, departments, jobs, locations cədvəlləri üzərində |
| `02_left_join.sql` | LEFT JOIN, NULL idarəetməsi, işçisi olan/olmayan şöbələr |

## 📌 INNER JOIN Mövzuları

| # | Mövzu |
|---|-------|
| 1 | İşçi adı + şöbə adı |
| 2 | İşçi adı + vəzifə adı |
| 3 | IT şöbəsində işləyənlər (JOIN + WHERE) |
| 4 | İşçi + şöbə + şəhər (3 cədvəl) |
| 5 | Maaşı 10000-dən çox olanlar |
| 6 | INNER JOIN vs ümumi sətir sayı müqayisəsi |

## 📌 LEFT JOIN Mövzuları

| # | Mövzu |
|---|-------|
| 7 | Bütün işçiləri şöbə adı ilə göstər |
| 8 | Şöbəsi olmayan işçini tap |
| 9 | Bütün şöbələri işçi sayı ilə göstər (COUNT + GROUP BY) |
| 10 | Heç bir işçisi olmayan şöbələr |
| Bonus | NVL ilə "təyin edilməyib" yazısı |

## ▶️ İstifadə

Sorğuları Oracle SQL Developer, SQL*Plus və ya FreeSQL kimi onlayn mühitdə `hr` sxemi ilə işə sal.

```sql
-- Nümunə
SELECT e.first_name, e.last_name, d.department_name
FROM hr.employees e
JOIN hr.departments d
    ON e.department_id = d.department_id;
```

## 📝 Qeyd

- `INNER JOIN` yalnız hər iki cədvəldə uyğun gələn sətirləri qaytarır — `department_id`-si `NULL` olan işçi itir.
- `LEFT JOIN` sol cədvəldəki bütün sətirləri saxlayır, sağda uyğunluq tapılmasa `NULL` qoyur.
- Aqreqasiya (`COUNT`) ilə `LEFT JOIN` birləşəndə boş qruplar da (məs. işçisi olmayan şöbələr) nəticədə görünür.

---
*Oracle SQL öyrənmə prosesi çərçivəsində hazırlanmış praktiki tapşırıqlar.*
