-- # GROUPBY
-- Contare quanti iscritti ci sono stati ogni anno
SELECT COUNT(*) AS 'iscritti'
FROM `students` 
GROUP BY (YEAR(`enrolment_date`));

-- Contare gli insegnanti che hanno l'ufficio nello stesso edificio
SELECT COUNT(`id`) as 'Number', `office_address`
FROM `teachers`
GROUP BY (`office_address`);

-- Calcolare la media dei voti di ogni appello d'esame
SELECT AVG(`vote`) AS 'vote', `exam_id`
FROM `exam_student`
GROUP BY (`exam_id`);

-- Contare quanti corsi di laurea ci sono per ogni dipartimento
SELECT COUNT(*) AS 'CORSI', `degree_id`
FROM `courses`
GROUP BY (`degree_id`);

-- # JOIN
-- Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia
SELECT *
FROM `students`
JOIN `degrees` ON `degrees`.`id` = `degree_id`
WHERE `degrees`.`name` = 'Corso di Laurea in Economia';

-- Selezionare tutti i Corsi di Laurea Magistrale del Dipartimento di Neuroscienze
