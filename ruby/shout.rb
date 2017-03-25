# Name: Saham Khozestani
# 6.4 Modules

# module Shout
#   #we'll put some methods here soon, but this code is fine for now!
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end
#   def self.yelling_happily(words)
#     words + "Yehhhhhhhhhhhh..." + " :-))))))"
#   end
# end

# word_angry = "Fudge"
# word_happy = "Awesome"
# p "#{Shout.yell_angrily(word_angry)}"
# p "#{Shout.yelling_happily(word_happy)}"
# Release 3: Convert a Standalone Module to a Mixin

module Shout
	def yell_angrily(words)
		words + "!!!" + " :("
	end

	def yelling_happily(words)
		words + " Yehhhhhhhhhh" + ":-))))))"
	end
end

class Adult
	include Shout
end

class Children
	include Shout
end

adult = Adult.new
children = Children.new

p "And he said: #{adult.yell_angrily("What the ...")}"
p "When they won, he said #{adult.yelling_happily("We did it !")}"

p "The little girl said: #{children.yelling_happily("Yes. I did it!")}"
p "Then when she got upset,she said: #{children.yell_angrily("I hate this")}"