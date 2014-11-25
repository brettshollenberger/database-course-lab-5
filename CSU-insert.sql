USE csu;
LOAD DATA INFILE '/Users/brett/Desktop/databases-lab-5/csvs/Campuses.csv'
  INTO TABLE campuses
  FIELDS
  TERMINATED BY ','
  OPTIONALLY ENCLOSED BY "'"
  IGNORE 1 LINES;
USE csu;
LOAD DATA INFILE '/Users/brett/Desktop/databases-lab-5/csvs/csu-fees.csv' INTO TABLE campus_fees
FIELDS
TERMINATED BY ','
OPTIONALLY ENCLOSED BY "'"
LINES TERMINATED BY '\n'
IGNORE 1 LINES (campus_id, year, fee);
USE csu;
LOAD DATA INFILE '/Users/brett/Desktop/databases-lab-5/csvs/degrees.csv' INTO TABLE degrees
FIELDS
TERMINATED BY ','
OPTIONALLY ENCLOSED BY "'"
LINES TERMINATED BY '\n'
IGNORE 2 LINES (year, campus_id, count);
USE csu;
LOAD DATA INFILE '/Users/brett/Desktop/databases-lab-5/csvs/discipline-enrollments.csv' INTO TABLE discipline_enrollments
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES (campus_id, discipline_id, year, undergraduate, graduate);
USE csu;
LOAD DATA INFILE '/Users/brett/Desktop/databases-lab-5/csvs/disciplines.csv' INTO TABLE disciplines
FIELDS 
TERMINATED BY ','
ENCLOSED BY "'"
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES (id, name);
USE csu;
LOAD DATA INFILE '/Users/brett/Desktop/databases-lab-5/csvs/enrollments.csv' INTO TABLE enrollments
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES (campus_id, year, total, fte);
USE csu;
LOAD DATA INFILE '/Users/brett/Desktop/databases-lab-5/csvs/faculty.csv' INTO TABLE faculty
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 2 LINES (campus_id, year, faculty);
