#6.7 Solo Challenge - Word Game
#Name: Saham Khozestani
#Guess Word Game
# User1 enters a phrase or a word and user2 will guess the word or phrase.
# step1: get the length of the phrase/word. 
# step2: display the initial state of the string.
# WHILE game is not over DO
#   step1: enter a letter
#   step2: IF the letter matches and counter is not equal to length of the original word
#       add the letter to the guessing word and decrement counter
#   step3: IF the letter is already in the guessing word then do not decrement the counter
#   step4: IF it is the wrong guess then decrement the counter. 
#   step5: IF reached total number of attempts and has not guessed the word then 
#     exit and print a loser message.

#   step6: IF guessed the word then exit and give a congratulatory message.

class WordGame
  attr_reader :game_word 
  attr_accessor :guess_word
  attr_accessor :guess_count
  attr_accessor :is_over
  #array for gussed letters
  attr_accessor :guess_letters

  def initialize(word)
    
    @game_word = word
    @guess_word = ""
    @guess_count = word.length
    @guess_letters = []
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
    #add the guessed letter to the array of letters
    @guess_letters << letter
    #end
    
    # p "guess word: #{@guess_word}"
    # p "guess count is #{@guess_count}"
    @guess_word
  end
  #if the repeat guess does not account against the user
  def repeat_guess(letter)
    #changed guess_word to guess_letters
    if @guess_letters.include? (letter)
      puts "You have repeated the letter #{letter}. You will not lose an attempt."
      @guess_count +=1
    end
  end  
  def print_loss
    p "SORRY! You are not good."
  end
  def print_congrats
    puts "YOU GUESSED IT RIGHT! ****** Guessed word: #{@guess_word}******,Game Word: #{@game_word}"
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
  game_word.print_congrats
elsif !game_word.is_over && (game_word.guess_count ==0)
  game_word.print_loss
puts "YOU LOST!"
end
  

