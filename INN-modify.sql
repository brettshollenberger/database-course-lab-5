CREATE TABLE reservations_original LIKE reservations;
INSERT INTO reservations_original SELECT * FROM reservations;

DELETE FROM reservations
WHERE id not in (
	SELECT r.id FROM (
		SELECT id FROM reservations
		WHERE (check_in >= "2010-09-01" AND check_in <= "2010-09-15")
		AND children=0
	) as r
);

ALTER TABLE reservations DROP COLUMN check_out;
ALTER TABLE reservations DROP COLUMN rate;
ALTER TABLE reservations DROP COLUMN first_name;
ALTER TABLE reservations DROP COLUMN children;

SELECT *
FROM reservations
ORDER BY room_id, adults, code;
