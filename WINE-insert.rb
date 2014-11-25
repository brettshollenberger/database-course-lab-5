#!/usr/bin/env ruby

`./mysql-import.rb --fields "{id: Integer, name: String, county: -> (c) { c == 'N/A' ? \"\\\N\" : \"'#{c}'\" }, state: String, area: -> (a) { a == 'N/A' ? \"\\\N\" : \"'#{a}'\" }, isAVA: -> (b) { b == 'Yes' }}" --file ./csvs/appellations.csv --database='wines' --table='appelations'`

`./mysql-import.rb --fields "{id: Integer, name: String, color: String}" --file ./csvs/grapes.csv --database='wines' --table='grapes'`

`./mysql-import.rb --fields "{id: Integer, grape: String, winery: String, appelation: String, state: Ignore, name: String, year: Integer, price: Integer, score: Integer, cases: Integer}" --file ./csvs/wine.csv --database='wines' --table='wines'`
