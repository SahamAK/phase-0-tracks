#6.7 Solo Challenge - Word Game Test
#Name: Saham Khozestani
#
require_relative "word_game"

describe WordGame do 
	 let(:wordgame) { WordGame.new("an apple") }
	  it "initialize with the new word" do
	 # 	#wordgame = WordGame.new("glass")
	 	expect(wordgame.initial_state).to eq "-- -----"
	 end
	# This example runs when I only execute with setting up guess_word = "-----" and game_word = "glass"
	#NOTE: I DO NOT KNOW HOW TO PASS THE OUTPUT FROM THE PREVIOUS IT CALL TO THE NEXT IT CALL.
	 expected_values = {'g' => "g----", "l" => "-l---", "a" => "--a--", "s" =>"---ss"}
	 expected_values.each do |val, expected|

	 	it "add letter to the new string" do
	 	expect(wordgame.get_letter(val)).to eq (expected)
	 	end
	 end
	# let (:wordgame) { WordGame.new("an apple")}
	# expected_values = {"a" => "a- a----", "n" => "-n -----", "p" => "-- -pp--", "l" => "-- ---l-", "e" => "-- ----e"}
	# expected_values.each do |val , expected|
	# 	it "add letter to the new string" do
	#  	expect(wordgame.get_letter(val)).to eq (expected)
	#  	end
	#  end
	it "current state" do
		#expect(wordgame.current_state("a----")).to eq "a----"
		expect(wordgame.current_state).to eq "current state: "

	end
	
end