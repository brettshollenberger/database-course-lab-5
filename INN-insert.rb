#!/usr/bin/env ruby

`./mysql-import.rb --fields "{code: Integer, room_id: String, check_in: Date, check_out: Date, rate: Float, last_name: Name, first_name: Name, adults: Integer, children: Integer}" --file ./csvs/reservations.csv --database 'inn' --table 'reservations'`

`./mysql-import.rb --fields "{id: String, name: String, beds: Integer, bed_type: String, max_occupancy: Integer, base_price: Integer, decor: String}" --file ./csvs/rooms.csv --database 'inn' --table 'rooms'`
