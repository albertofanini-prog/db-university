---
--- Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia
SELECT `degrees`.`name`, `students`.*
FROM `degrees`
INNER JOIN `students`
ON `students`.`degree_id` = `degrees`.`id`
WHERE `degrees`.`name` = 'Corso di Laurea in Economia'

--- Selezionare tutti i Corsi di Laurea del Dipartimento di Neuroscienze
SELECT `departments`.`name`, `degrees`.*
FROM `departments`
INNER JOIN `degrees`
ON `degrees`.`department_id` = `departments`.`id`
WHERE `departments`.`name` = 'Dipartimento di Neuroscienze';

--- Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44)
SELECT `t`.`name`, `t`.`surname`, `c`.`name` AS course_name
FROM `teachers` AS `t`
JOIN `course_teacher` AS `ct`
ON `ct`.`teacher_id` = `t`.`id`
JOIN `courses` AS `c`
ON `c`.`id` = `ct`.`course_id`
WHERE `t`.`id` = 44;

--- Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono iscritti e il
--- relativo dipartimento, in ordine alfabetico per cognome e nome
SELECT `s`.`id`, `s`.`name`, `s`.`surname`, `deg`.`name` AS `degree_name`, `dep`.`name` AS `dep_name`
FROM `students` AS `s`
JOIN `degrees` AS `deg`
ON `s`.`degree_id` = `deg`.`id`
JOIN `departments` AS `dep`
ON `deg`.`department_id` = `dep`.`id`
ORDER BY `s`.`surname`, `s`.`name`
