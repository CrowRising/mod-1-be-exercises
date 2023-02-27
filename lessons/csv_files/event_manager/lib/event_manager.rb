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

def clean_zipcode(zipcode)
  if zipcode.nil?
     "00000"
  elsif zipcode.length == 5
    zipcode
  elsif zipcode.length < 5
    zipcode.rjust(5, "0") #this pads a string says how many spaces to pad and it is saying pad with "0"
  elsif zipcode.length > 5
    zipcode[0..4]  #this says that if there are more than 5 digits just return the index places of 0..4
  end
 end

contents.each do |row|
  name = row[:first_name]
  zipcode = clean_zipcode(row[:zipcode])
  
  puts "#{name} #{zipcode}"
 end


