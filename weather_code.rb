require './conditions'


puts "Enter a zipcode:"
zip = gets.chomp

c = Condition.new(zip)

puts "Location: #{c.location}"
puts "Current Temp (F): #{c.temperature}"
