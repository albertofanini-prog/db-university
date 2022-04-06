---
--- Contare quanti iscritti ci sono ogni anno
SELECT YEAR(`enrolment_date`) AS `enr`, COUNT(`id`)
FROM (`students`)
GROUP BY(`enr`)