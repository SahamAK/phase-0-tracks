vowel = ["a", "e", "i", "o", "u","A","E","I","O","U"]
non_vowel = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z","B","C","D","F","G","H","J","K","L","M","N","P","Q","R","S","T","V","W","X","Y","Z"]

a = "Felicia Torres"
#copy string and lower cases
#new_a = a.downcase
#convert strig to an array


new_a =a.split
p "split the new_a : #{new_a}"
new_a = new_a.rotate!
p "new_a after rotation : #{new_a}"
new_a = new_a.join(' ').split('')



#get length of string
a_length = a.length
p new_a
#replace first letter with last letter
#new_a[0] = new_a.last
#replace last letter with first letter
#new_a[a_length - 1] = a[0].downcase

#p new_a

# for the rest of the letters
# if the letter is a vowel replace with the next vowel except "u"="a"
# if the letter is constant replace with the next constant, letters before vowel in alphabt
# will be replaced with the letter after that vowel in the english alphabet
#end.

i=0

new_a.each do |element|
  p element
  if vowel.include?element 
    index = vowel.find_index(element)
    new_a[i] =vowel[index +1]
    #new_a[i]= element.next
    if element !="u"
     new_a[i] = vowel[index + 1]
    else
      new_a[i] = "a"
    end
  elsif non_vowel.include? element
    p element
    new_a[i] = element.next
    p "element next: #{element}"
    if vowel.include?new_a[i]
      new_a[i]= new_a[i].next
    end

  end
  i+=1
end

p new_a
p new_a.join