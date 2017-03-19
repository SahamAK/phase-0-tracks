
def tricky_algorithm(name)
vowel = ["a", "e", "i", "o", "u","A","E","I","O","U"]
non_vowel = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z","B","C","D","F","G","H","J","K","L","M","N","P","Q","R","S","T","V","W","X","Y","Z"]

#a = "Felicia Torres"

new_a =name.split
p "split the new_a : #{new_a}"
new_a = new_a.rotate!
p "new_a after rotation : #{new_a}"
new_a = new_a.join(' ').split('')



#get length of string
a_length = name.length
p new_a


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
    if element !="u" ||element !="U"
     new_a[i] = vowel[index + 1]
    else
      if element =="u"
      new_a[i] = "a"
      else
        new_a[i] = "A"
      end
    end
    p "vowel = #{new_a[i]}"
  elsif non_vowel.include? element
    p element

    if element =="Z" 
      new_a[i] = "A"
    elsif element =="z"
      new_a[i] = "a"

    else

      new_a[i] = element.next
      p "element next: #{element}"
      if vowel.include?new_a[i]
        new_a[i]= new_a[i].next
      end
    end

  end
  p new_a
  i+=1
end

p new_a
p new_a.join
end
arr_name = []
arr_tricky = []
name = nil
#Release 1 Provide user interface
p "Welcome to our Tricky Algorithm to alter your name"

 while name !="quit" do
  p "please enter a first name and last name. If done, enter 'quit':"
  name = gets.chomp
#name = "Saham Khozestani"
if name == nil
  break
elsif name !="quit"
  arr_tricky.push tricky_algorithm(name)
  arr_name.push name
end

end

counter = 0
while counter < arr_name.length do
  p "#{arr_name[counter]} is also known as #{arr_tricky[counter]}."
  counter +=1
end

#p "the array of names: #{arr_name}"
#p "the array of tricky Names: #{arr_tricky}"