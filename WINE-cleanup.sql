START TRANSACTION;
USE wines;
SET FOREIGN_KEY_CHECKS=0;
DROP TABLE appelations;
DROP TABLE grapes;
DROP TABLE wines;
SET FOREIGN_KEY_CHECKS=1;
COMMIT;