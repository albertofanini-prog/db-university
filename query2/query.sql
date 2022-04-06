---
--- Contare quanti iscritti ci sono ogni anno
SELECT YEAR(`enrolment_date`) AS `enr`, COUNT(`id`)
FROM (`students`)
GROUP BY(`enr`);

--- Contare gli insegnanti che hanno l'ufficio nello stesso edificio
SELECT (`office_address`), COUNT(*) AS `teachers_here`
FROM `teachers`
GROUP BY `office_address`