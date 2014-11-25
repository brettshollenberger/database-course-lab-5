USE cars;
LOAD DATA INFILE '/Users/brett/Desktop/databases-lab-5/csvs/car-makers.csv' INTO TABLE makers
FIELDS
TERMINATED BY ','
OPTIONALLY ENCLOSED BY "'"
LINES TERMINATED BY '\n'
IGNORE 1 LINES (id, short_name, full_name, country_id);
USE cars;
LOAD DATA INFILE '/Users/brett/Desktop/databases-lab-5/csvs/car-names.csv' INTO TABLE car_names
FIELDS
TERMINATED BY ','
OPTIONALLY ENCLOSED BY "'"
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES (id, model, make);
USE cars;
LOAD DATA INFILE '/Users/brett/Desktop/databases-lab-5/csvs/cars-data.csv' INTO TABLE cars
FIELDS
TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES;
USE cars;
LOAD DATA INFILE '/Users/brett/Desktop/databases-lab-5/csvs/continents.csv' INTO TABLE continents
FIELDS 
TERMINATED BY ','
OPTIONALLY ENCLOSED BY "'"
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES (id, name);
USE cars;
LOAD DATA INFILE '/Users/brett/Desktop/databases-lab-5/csvs/countries.csv' INTO TABLE countries
FIELDS
TERMINATED BY ','
OPTIONALLY ENCLOSED BY "'"
LINES TERMINATED BY '\n'
IGNORE 1 LINES (id, name, continent_id);
USE cars;
LOAD DATA INFILE '/Users/brett/Desktop/databases-lab-5/csvs/model-list.csv' INTO TABLE models
FIELDS
TERMINATED BY ','
OPTIONALLY ENCLOSED BY "'"
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES (id, maker, model);
