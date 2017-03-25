#6.7 Solo Challenge - Word Game Test
#Name: Saham Khozestani
#
require_relative "word_game"

describe WordGame do 
	let(:wordgame) { WordGame.new("glass") }
	# it "initialize with the new word" do
	# 	#wordgame = WordGame.new("glass")
	# 	expect(wordgame.initial_state("")).to eq "-----"
	# end
	it "add letter to the new string" do
		expect(wordgame.get_letter("g")).to eq "g----"
	end
	
end