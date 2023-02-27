# ./lib/event_manager.rb
require "csv"
puts "EventManager initialized."

contents = CSV.open("data/event_attendees.csv", headers: true)
contents.each do |row|
  name = row[2]
  # puts name #this will only be able to read by index type
end
require "csv"
puts "EventManager initialized."

contents = CSV.open("data/event_attendees.csv", headers: true, header_converters: :symbol)
contents.each do |row|
  name = row[:first_name]
  # puts name #Adding a header converter will allow us access info by the names or symbols
end
contents = CSV.open("data/event_attendees.csv", headers: true, header_converters: :symbol)
contents.each do |row|
  name = row[:first_name]
  zipcode = row[:zipcode]
  # puts "#{name} #{zipcode}" #date is rarely perfect so we may need to clean it up which is what is happening next
end

contents = CSV.open("data/event_attendees.csv", headers: true, header_converters: :symbol)
contents.each do |row|
  name = row[:first_name]
  zipcode = row[:zipcode]

  # if the zip code is exactly five digits, assume that it is ok
  # if the zip code is more than 5 digits, truncate it to the first 5 digits
  # if the zip code is less than 5 digits, add zeros to the front until it becomes five digits

  puts "#{name} #{zipcode}"
 end
