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
ORDER BY `s`.`surname`, `s`.`name`;

--- Selezionare tutti i corsi di laurea con i relativi corsi e insegnanti
SELECT `d`.`id`, `d`.`name` AS `degree_name`, `c`.`name` AS `course_name`, `t`.`name`, `t`.`surname`
FROM `degrees` AS `d`
JOIN `courses` AS `c`
ON `d`.`id` = `c`.`degree_id`
JOIN `course_teacher` AS `ct`
ON `ct`.`course_id` = `c`.`id`
JOIN `teachers` AS `t`
ON `t`.`id` = `ct`.
ON `t`.`id` = `ct`.`teacher_id`;

--- Selezionare tutti i docenti che insegnano nel Dipartimento di Matematica
SELECT `dep`.`name` AS `dep_name`, `t`.*
FROM `departments` AS `dep`
JOIN `degrees` AS `deg`
ON `deg`.`department_id` = `dep`.`id`
JOIN `courses` AS `c`
ON `c`.`degree_id` = `deg`.`id`
JOIN `course_teacher` AS `ct`
ON `ct`.`course_id` = `c`.`id`
JOIN `teachers` AS `t`
ON `t`.`id` = `ct`.`teacher_id`
WHERE `dep`.`name` = 'Dipartimento di MAtematica';

--- BONUS: Selezionare per ogni studente quanti tentativi d???esame ha sostenuto per
--- superare ciascuno dei suoi esami
SELECT `c`.`name`, AVG(`es`.`vote`)
FROM `students` AS `s`
JOIN `exam_student` AS `es`
ON `es`.`student_id` = `s`.`id`
JOIN `exams` AS `e`
ON `es`.`exam_id` = `e`.`id`
JOIN `courses` AS `c`
ON `c`.`id` = `e`.`course_id`
GROUP BY `c`.`id`;
