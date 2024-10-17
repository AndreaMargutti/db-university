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
SELECT * 
FROM `degrees`
JOIN `departments` ON `departments`.`id` = `department_id`
WHERE `departments`.`name` = 'Dipartimento di Neuroscienze'
AND `level` = 'Magistrale';

-- Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44)
SELECT * 
FROM `courses`
JOIN `course_teacher` ON `courses`.`id` = `id`
WHERE `course_teacher`.`teacher_id` = 44;

-- Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono iscritti e il relativo dipartimento, in ordine alfabetico per cognome e nome
