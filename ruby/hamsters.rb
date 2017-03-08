puts "what's the hampster's name?"
name = gets.chomp

puts "volume level from 1 to 10?"
volume = gets.chomp.to_i


puts "fur color?"
color = gets.chomp

puts "good candidate? (yes / no)"
good_candidate = gets.chomp
if good_candidate == "yes"
  good_candidate = true
else
  good_candidate = false
end

puts "age?"
age = gets.chomp.to_i
if age == ""
  age = nil
end

puts "Hamster Information:"
puts "Name: #{name}, \nVolume Level: #{volume}, \nFur Color: #{color}"
puts "Good Candidate?: #{good_candidate}, \nAge: #{age}"