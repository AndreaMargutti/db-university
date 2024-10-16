-- Selezionare tutti gli studenti nati nel 1990
SELECT * 
FROM `students` 
WHERE YEAR(`date_of_birth`)= '1990';

-- Selezionare tutti i corsi che valgono più di 10 crediti
SELECT * 
FROM `courses` 
WHERE `cfu` > 10;

-- Selezionare tutti gli studenti che hanno più di 30 anni
SELECT * 
FROM `students`
WHERE 2024 - YEAR(`date_of_birth`) = 30;

-- Selezionare tutti i corsi del primo semestre del primo anno di un qualsiasi corso di laurea
SELECT * 
FROM `courses` 
WHERE `year` = 1
AND `period` = 'I Semestre';

-- Selezionare tutti gli appelli d'esame che avvengono nel pomeriggio (dopo le 14) del 20/06/2020
SELECT * 
FROM `exams` 
WHERE TIME(`hour`) >= "14:00:00"
AND DATE(`date`) = "2020-06-20";

-- Selezionare tutti i corsi di laurea magistrale
SELECT * 
FROM `degrees` 
WHERE `level` = "magistrale";

-- Da quanti dipartimenti è composta l'università?
SELECT COUNT(*)
FROM `departments`;

-- Quanti sono gli insegnanti che non hanno un numero di telefono?
SELECT COUNT(*) 
FROM `teachers` 
WHERE `phone`IS NULL;

-- Inserire nella tabella degli studenti un nuovo record con i propri dati (per il campo degree_id, inserire un valore casuale)
INSERT INTO `students`
VALUES (RAND(`id`), 20, "Andrea", "Margutti", "2000-03-30", "MRGNDR00C30L682G", "2019-02-21", "740056", "marguttiandrea30@gmail.com");

-- Cambiare il numero dell’ufficio del professor Pietro Rizzo in 126
UPDATE `teachers`
SET `office_number` = 126
WHERE `id` = 58;

-- Eliminare dalla tabella studenti il record creato precedentemente al punto 9