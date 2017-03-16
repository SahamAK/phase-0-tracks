=begin
  This program will 
  a. Prompt the designer for the client information
  b. will convert to appropriate datatypes 
  c. Print the hash to screen
  d. Ask the designer if need to make changes to a key
  e. If key is not empty, update client information and print hash.
  
=end


client_info = {
	name: [],
	age: [],
	num_of_children: [],
	decore_theme: [],
	income: []
}

puts "   ENTER CLIENT'S DETAIL"

puts "Name"
client_info[:name]=gets.chomp
#puts client_info[:name]

puts "Age:" 

client_info[:age]=gets.chomp.to_i
puts client_info[:age]
puts "Number of children:"
client_info[:num_of_children]=gets.chomp.to_i
puts "Decore Theme: "
client_info[:decore_theme]=gets.chomp
puts "Income: "
client_info[:income]=gets.chomp.to_i

puts client_info

puts " "

puts "Client Detail"
puts "Name: #{client_info[:name]}"
puts "Age: #{client_info[:age]}"
puts "Number of children: #{client_info[:num_of_children]}"
puts "Decore Theme: #{client_info[:decore_theme]}"
puts "Income: #{client_info[:income]}"

puts " Please enter a key if you wish to change the value: (key)"
key_entered = gets.chomp


if key_entered.empty? == false
  key_entered = key_entered.to_sym
  #puts key_entered
  puts "enter new value:"
  new_value = gets.chomp


  if new_value.match(/^(\d)+$/) then new_value = new_value.to_i end
  #p new_value

  client_info[key_entered] = new_value
  puts " UPDATED CLIENT INFORMATION"
  puts client_info

else
  puts "You have entered an empty string!"
end