#5.7 Solo Challenge - Word Game
#Name: Saham Khozestani
#
class WordGame
  attr_reader :game_word 
  attr_accessor :guess_word
  attr_accessor :guess_count
  attr_accessor :is_over

  def initialize(word)
    
    @game_word = word
    @guess_word = ""
    @guess_count = word.length
    @is_over = false
  end

  def initial_state
      @game_word.length.times do |i|
        if @game_word[i] =~  (/[a-zA-Z]/)
        @guess_word << "-"
      elsif @game_word[i] == " "
        @guess_word << " "
      end
    end
    @guess_word
  end

  def current_state
    p "current state"
    p "#{@guess_word}"
  end

  def get_letter(letter)
    # Get the letter from input 
    #if letter in string then update the -- in the guess word
    temp=@game_word.split(//)
    p "gamae word: #{temp}"
    if (temp.include? (letter))
       temp.each_index do |i|
        if temp[i] == letter
          @guess_word[i] = letter
        end
      end
    end  
    @guess_count -= 1
    #end
    
    p "guess word: #{@guess_word}"
    p "guess count is #{@guess_count}"
    @guess_word
  end

  def print_result(word_guess)
    p "if match congrats else boo!"
  end

end

# user interface

puts "Welcome to the Word Game"
puts "User 1: Please enter a valid word or phrase:"
word = gets.chomp
game_word = WordGame.new(word)


puts "This is the initial state of the word:"
puts "Initial State: "
puts game_word.initial_state
puts "User 2: Please guess the word"
guess_letter = gets.chomp
game_word.get_letter(guess_letter)
game_word.current_state
