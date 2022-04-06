---
--- Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia
SELECT `degrees`.`name`, `students`.*
FROM `degrees`
INNER JOIN `students`
ON `students`.`degree_id` = `degrees`.`id`
WHERE `degrees`.`name` = 'Corso di Laurea in Economia'


--- Selezionare tutti i Corsi di Laurea del Dipartimento di Neuroscienze
