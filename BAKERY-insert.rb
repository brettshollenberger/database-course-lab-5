#!/usr/bin/env ruby

`./mysql-import.rb --fields "{receipt_id: Integer, ordinal: Integer, good_id: String}" --file ./BAKERY/items.csv --database 'bakery' --table 'receipt_items'`

`../mysql-import.rb --fields "{id: Integer, date: Date, customer_id: Integer}" --file .receipts.csv --database 'bakery' --table 'receipts'`
