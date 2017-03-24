#6.7 Solo Challenge - Word Game Test
#Name: Saham Khozestani
#
require_relative "word_game"
describe WordGame do 
	it "initialize with the new word" do
		wordgame = WordGame.new("glass")
		expect(wordgame.initial_state("")).to eq "-----"
	end
	
end