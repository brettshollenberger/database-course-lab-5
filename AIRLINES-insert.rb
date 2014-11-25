#!/usr/bin/env ruby

`./mysql-import.rb --fields "{id: Integer, name: String, abbreviation: String, country: String}" --file ./csvs/airlines.csv --database 'airlines' --table 'airlines'`

`./mysql-import.rb --fields "{city: String, code: String, name: String, country: String, country_abbreviation: String}" --file ./csvs/airports100.csv --database 'airlines' --table 'airports'`
