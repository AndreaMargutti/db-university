-- Contare quanti iscritti ci sono stati ogni anno
SELECT COUNT(*) AS 'iscritti'
FROM `students` 
GROUP BY (YEAR(`enrolment_date`));