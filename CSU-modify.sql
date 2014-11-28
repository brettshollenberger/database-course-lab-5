CREATE TABLE discipline_enrollments_original like discipline_enrollments;
INSERT INTO discipline_enrollments_original SELECT * FROM discipline_enrollments;

DELETE FROM discipline_enrollments
WHERE id not in (
	SELECT d.id FROM (
		SELECT discipline_enrollments.id
		FROM discipline_enrollments
		INNER JOIN disciplines
		ON disciplines.id=discipline_enrollments.discipline_id
		INNER JOIN campuses
		ON campuses.id=discipline_enrollments.campus_id
		WHERE disciplines.name="Undeclared"
		OR (disciplines.name="Engineering" AND undergraduate > 2000)
		OR campuses.name="California Polytechnic State University-San Luis Obispo"
	) as d
);

SELECT *
FROM discipline_enrollments
ORDER BY id, discipline_id;

CREATE TABLE campus_fees_original LIKE campus_fees;
INSERT INTO campus_fees_original SELECT * FROM campus_fees;

DELETE FROM campus_fees
WHERE id not in (
	SELECT cf.id FROM (
		SELECT campus_fees.id
		FROM campus_fees
		INNER JOIN campuses
		ON campuses.id=campus_fees.campus_id
		WHERE fee > 2500
		AND (campus_fees.year=2002
         OR campus_fees.year=2004
         OR campus_fees.year=2005
         OR campus_fees.year=2006)
		AND (campuses.name="California Polytechnic State University-San Luis Obispo" 
         OR campuses.name="California State Polytechnic University-Pomona" 
         OR campuses.name="San Jose State University")
	) as cf
);

SELECT *
FROM campus_fees
ORDER BY id, year;
