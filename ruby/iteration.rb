# Release 0
# iterating without parameter
5.times do
  puts "This is a test"
end
# iterating with parameter
3.times do |x|
  puts x + x
end
# one line block
4.times {|x| puts x + x}

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

puts "map output"
new_array = array.map do |x|
  x * 2
end
p new_array

puts "map! output"
array.map! do |x|
  x + 10
end
p array

puts "hash.each output"
full_name.each do |x, y|
  puts "#{x} name is #{y}"
end
p full_name

puts "hash.map output"
new_full_name = full_name.map do |x, y|
  "#{x} name is #{y}"
end
p new_full_name
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
new_numbers = numbers.reject {|x| x < 5}
p new_numbers

puts "rejects value less than 5 in hash"
new_letters = letters.reject {|x, y| y < 3}
p new_letters

puts "selects less than 5 in array"
new_numbers = numbers.select {|x| x < 5}
p new_numbers

puts "select value less than 5 in hash"
new_letters = letters.select {|x, y| y < 3}
p new_letters

puts "keeps if less than 6"
numbers.keep_if {|x| x < 6}
p numbers

puts "keep if value doesn't equal 3"
letters.keep_if {|x, y| y != 3}
p letters

puts "drop while less than 2"
new_numbers = numbers.drop_while {|x| x < 2}
p new_numbers

puts "drop while value is equal to 1"
new_letters = letters.drop_while {|x, y| y == 1}
p new_letters












