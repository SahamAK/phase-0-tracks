vowel = ["a", "e", "i", "o", "u"]
non_vowel = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]

a = "Felicia Torres"
#copy string and lower cases
new_a = a.downcase
#convert strig to an array
new_a =new_a.split('')
#get length of string
a_length = a.length
p new_a
#replace first letter with last letter
new_a[0] = new_a.last
#replace last letter with first letter
new_a[a_length - 1] = a[0]

p new_a

# for the rest of the letters
# if the letter is a vowel replace with the next vowel except "u"="a"
# if the letter is constant replace with the next constant, letters before vowel in alphabt
# will be replaced with the letter after that vowel in the english alphabet
#end.

