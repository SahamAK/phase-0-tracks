# Name: Saham Khozestani
# 6.4 Modules
#require_relative 'Shout'
module Shout
  #we'll put some methods here soon, but this code is fine for now!
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end
  def self.yelling_happily(words)
    words + "Yehhhhhhhhhhhh..." + " :-))))))"
  end
end

word_angry = "Fudge"
word_happy = "Awesome"
p "#{Shout.yell_angrily(word_angry)}"
p "#{Shout.yelling_happily(word_happy)}"

