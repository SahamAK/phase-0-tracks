#5.3 Mandtory pairing : Iteration 
#names: Saham Khozestani and Mike Tsou
# Release 0
# iterating without parameter
5.times do
  puts "This is a test"
end
puts " "
# iterating with parameter
3.times do |x|
  puts x + x
end
puts " "
# one line block
4.times {|x| puts x + x}

puts " "
# Release 1
array = [2, 5, 3, 7, 9]

full_name = {
  first: "adam",
  middle: "richard",
  last: "smith"
}

puts "array output"
array.each do |x|
  puts x + 2
end
p array
puts " "

puts "map output"
new_array = array.map do |x|
  x * 2
end
p new_array
puts ""

puts "map! output"
array.map! do |x|
  x + 10
end
p array
puts " "

puts "hash.each output"
full_name.each do |x, y|
  puts "#{x} name is #{y}"
end
p full_name
puts " "

puts "hash.map output"
new_full_name = full_name.map do |x, y|
  "#{x} name is #{y}"
end
p new_full_name
puts " "
# fails due to hash data structure
#full_name.map! do |x, y|
#  "#{x} name is #{y}"
#end
#p full_name  

# Release 2
numbers = [0, 1, 3, 4, 5, 6, 7]

letters = {
  a: 1,
  b: 2,
  c: 3,
  d: 4
}
puts "reject less than 5 in array"
puts "numbers array prior to command: #{numbers}"
new_numbers = numbers.reject {|x| x < 5}
p new_numbers
puts " "

puts "rejects value less than 5 in hash"
puts "letters hash prior to reject command: #{letters}"
new_letters = letters.reject {|x, y| y < 3}
p new_letters
puts " "

puts "selects less than 5 in array"
puts "array prior to select command: #{numbers}"
new_numbers = numbers.select {|x| x < 5}
p new_numbers
puts " "

puts "select value less than 3 in hash"
puts "hash prior to select command: #{letters}"
new_letters = letters.select {|x, y| y < 3}
p new_letters
puts " "

puts "keeps if less than 6"
puts "array prior to keep_if command: #{numbers}"
numbers.keep_if {|x| x < 6}
p numbers
puts " "

puts "keep if value doesn't equal 3"
puts "hash prior to keep_if command: #{letters}"
letters.keep_if {|x, y| y != 3}
p letters
puts " "

puts "drop while less than 2"
puts " numbers array prior to drop_while: #{numbers}"
new_numbers = numbers.drop_while {|x| x < 2}
p "new array:  #{new_numbers}"
puts "original array : #{numbers}"
puts " "

puts "drop while value is equal to 1"
puts "letters hash prior to drop_while: #{letters}"
new_letters = letters.drop_while {|x, y| y == 1}
p "new hash: #{new_letters}"
puts "original hash: #{letters}"












