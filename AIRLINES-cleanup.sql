START TRANSACTION;
USE airlines;
SET FOREIGN_KEY_CHECKS=0;
DROP TABLE airlines;
DROP TABLE airports;
DROP TABLE flights;
SET FOREIGN_KEY_CHECKS=1;
COMMIT;
