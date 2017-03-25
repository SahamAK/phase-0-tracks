#6.7 Solo Challenge - Word Game
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
    p "current state: #{@guess_word}"
  end

  def get_letter(letter)
    # Get the letter from input 
    #if letter in string then update the -- in the guess word
    temp=@game_word.split(//)
    if (temp.include? (letter))
       temp.each_index do |i|
        if temp[i] == letter
          @guess_word[i] = letter
        end
      end
    end  
    @guess_count -= 1
    #end
    
    # p "guess word: #{@guess_word}"
    # p "guess count is #{@guess_count}"
    @guess_word
  end
  #if the repeat guess does not account against the user
  def repeat_guess(letter)
    if @guess_word.include? (letter)
      puts "You have repeated the letter #{letter}. You will not lose an attempt."
      @guess_count +=1
    end
  end  
  def print_loss(word_guess)
    p "SORRY! You are not good."
  end
  def print_congrats(word_guess)
    puts "YOU GUESSED IT RIGHT! ******#{@guess_word}******"
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

while (!game_word.is_over) && (game_word.guess_count != 0)
  puts "Attempts left: #{game_word.guess_count}"
  puts "User 2: Please guess the word"
  guess_letter = gets.chomp
  game_word.repeat_guess(guess_letter)
  game_word.get_letter(guess_letter)
  #game_word.repeat_guess(guess_letter)
  game_word.current_state

  if (game_word.guess_word == game_word.game_word)
    game_word.is_over = true
  end
end
if game_word.is_over 
  game_word.print_congrats(game_word.guess_word)
elsif !game_word.is_over && (game_word.guess_count ==0)
  game_word.print_loss(game_word.guess_word)
puts "YOU LOST!"
end
  

