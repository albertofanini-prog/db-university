---
--- Contare quanti iscritti ci sono ogni anno
SELECT YEAR(`enrolment_date`) AS `enr`, COUNT(`id`)
FROM (`students`)
GROUP BY `enr`;

--- Contare gli insegnanti che hanno l'ufficio nello stesso edificio
SELECT (`office_address`), COUNT(*) AS `teachers_here`
FROM `teachers`
GROUP BY `office_address`;

--- Calcolare la media dei voti di ogni appello d'esame
SELECT (`exam_id`), AVG(`vote`) AS `media`
FROM `exam_student`
GROUP BY `exam_id`;

--- Contare quanti corsi di laurea ci sono per ogni dipartimento
SELECT `department_id`, COUNT(`id`) AS `total`
FROM `degrees`
GROUP BY `department_id`;
