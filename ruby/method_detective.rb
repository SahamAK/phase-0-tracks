#Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

# "iNvEsTiGaTiOn".<???>
# => “InVeStIgAtIoN”
initial_str = "iNvEsTiGaTiOn"
#using replace
puts initial_str.replace "InVeStIgAtIoN"
#puts replace_case

#using swapcase
initial_str = "iNvEsTiGaTiOn"
puts initial_str.swapcase
#puts swap_case

# "zom".<???>
puts "zom".insert(1, 'o')
puts "zom".sub(/([o])/,'oo')
puts "zom".sub(/([o])/,'o'*2)
# => “zoom”

# "enhance".<???>
# => "    enhance    "
puts "enhance".center(15,' ')

# "Stop! You’re under arrest!".<???>
puts "Stop! You're under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"

# "the usual".<???>
puts "the usual "<< "suspects"
puts "the usual".concat(" suspects")
#=> "the usual suspects"

# " suspects".<???>
#prepend
puts "suspects".prepend("the usual ")
# => "the usual suspects"

# "The case of the disappearing last letter".<???>
puts "The case of the disappearing last letter".chomp("r")
puts "The case of the disappearing last letter".chop


# => "The case of the disappearing last lette"

# "The mystery of the missing first letter".<???>
val = "The mystery of the missing first letter"
puts val.slice!(0)
puts val

puts "using gsub"
puts "The mystery of the missing first letter".gsub(/^\T/, "")
puts "using sub"
puts "The mystery of the missing first letter".sub("T","")

# => "he mystery of the missing first letter"

# "Elementary,    my   dear        Watson!".<???>
puts "squeeze"
puts "Elementary,    my   dear        Watson!".squeeze(" ")
puts "split.join"
puts "Elementary,    my   dear        Watson!".split.join(" ")
puts "gsub"
puts "Elementary,    my   dear        Watson!".gsub(/\s+/, " ")
# => "Elementary, my dear Watson!"

# "z".<???>
puts "z".ord
puts "z".codepoints
# => 122 
# (What is the significance of the number 122 in relation to the character z?)
puts "122 is the ASCII representation of the letter z. This specifies what number is used to represent each character to the computer."

# "How many times does the letter 'a' appear in this string?".<???>
puts "How many times does the letter 'a' appear in this string?".count "a"
# => 4