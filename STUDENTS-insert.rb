#!/usr/bin/env ruby

`./mysql-import.rb --fields "{last_name: Name, first_name: Name, grade: Integer, classroom: Integer}" --file ./csvs/list.csv --database 'students' --table 'students'`

`./mysql-import.rb --fields "{last_name: Name, first_name: Name, classroom: Integer}" --file ./csvs/teachers.csv --database 'students' --table 'teachers'`
