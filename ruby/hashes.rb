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

