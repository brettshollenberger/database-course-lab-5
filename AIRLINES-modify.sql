CREATE TABLE flights_copy LIKE flights;
INSERT INTO flights_copy SELECT * FROM flights;

DELETE FROM flights WHERE origin_airport_id<>"AOS" AND destination_airport_id<>"AOS";

UPDATE flights
INNER JOIN airlines ON flights.airline_id=airlines.id
SET flights.number=flights.number + 2000
WHERE airlines.abbreviation<>"JetBlue" AND airlines.abbreviation<>"Northwest" AND airlines.abbreviation<>"Virgin";

START TRANSACTION;

CREATE TABLE even_flight_numbers LIKE flights;

INSERT INTO even_flight_numbers (
	SELECT flights.* FROM flights
	INNER JOIN airlines
	ON airlines.id=flights.airline_id
	WHERE airlines.abbreviation<>"JetBlue" AND airlines.abbreviation<>"Northwest" AND airlines.abbreviation<>"Virgin"
	AND MOD(flights.id, 2)=0
);

DELETE flights.* FROM flights
INNER JOIN airlines
ON airlines.id=flights.airline_id
WHERE airlines.abbreviation<>"JetBlue" AND airlines.abbreviation<>"Northwest" AND airlines.abbreviation<>"Virgin"
AND MOD(flights.id, 2)=0;

UPDATE flights
INNER JOIN airlines
ON airlines.id=flights.airline_id
SET flights.id=flights.id+1
WHERE airlines.abbreviation<>"JetBlue" AND airlines.abbreviation<>"Northwest" AND airlines.abbreviation<>"Virgin"
AND MOD(flights.id, 2)=1;

INSERT INTO flights (
	SELECT even_flight_numbers.id-1 as id, airline_id, number, origin_airport_id, destination_airport_id FROM even_flight_numbers
	INNER JOIN airlines
	ON airlines.id=even_flight_numbers.airline_id
	WHERE airlines.abbreviation<>"JetBlue" AND airlines.abbreviation<>"Northwest" AND airlines.abbreviation<>"Virgin"
);

DROP TABLE even_flight_numbers;

COMMIT;

UPDATE flights
INNER JOIN airlines
ON airlines.id=flights.airline_id
SET flights.airline_id=(SELECT id FROM airlines WHERE abbreviation="Northwest")
WHERE (airlines.abbreviation<>"JetBlue" AND airlines.abbreviation<>"Virgin")
AND (origin_airport_id="AOS" OR destination_airport_id="AOS");

SELECT * FROM flights
INNER JOIN airlines
ON airlines.id=flights.airline_id
ORDER BY airlines.name, flights.id;
