File	Topic
aggregate_functions.sql	COUNT, SUM, AVG, MIN, MAX, GROUP BY, HAVING
01_inner_join.sql	INNER JOIN across employees, departments, jobs, locations
02_left_join.sql	LEFT JOIN, NULL handling, departments with/without employees
📌 JOIN Mövzuları

INNER JOIN

#	Mövzu
1	İşçi adı + şöbə adı
2	İşçi adı + vəzifə adı
3	IT şöbəsində işləyənlər (JOIN + WHERE)
4	İşçi + şöbə + şəhər (3 cədvəl)
5	Maaşı 10000-dən çox olanlar
6	INNER JOIN vs ümumi sətir sayı müqayisəsi

LEFT JOIN

#	Mövzu
7	Bütün işçiləri şöbə adı ilə göstər
8	Şöbəsi olmayan işçini tap
9	Bütün şöbələri işçi sayı ilə göstər (COUNT + GROUP BY)
10	Heç bir işçisi olmayan şöbələr
Bonus	NVL ilə "təyin edilməyib" yazısı
▶️ İstifadə

Sorğuları Oracle SQL Developer, SQL*Plus və ya FreeSQL kimi onlayn mühitdə hr sxemi ilə işə sal.
INNER JOIN yalnız hər iki cədvəldə uyğun gələn sətirləri qaytarır — department_id-si NULL olan işçi itir.
LEFT JOIN sol cədvəldəki bütün sətirləri saxlayır, sağda uyğunluq tapılmasa NULL qoyur.
Aqreqasiya (COUNT) ilə LEFT JOIN birləşəndə boş qruplar da (məs. işçisi olmayan şöbələr) nəticədə görünür
