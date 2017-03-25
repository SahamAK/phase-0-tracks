#5.7 Solo Challenge - Word Game
#Name: Saham Khozestani
#
class WordGame
  attr_reader :game_word 
  attr_writer :guess_word
  attr_accessor :guess_count
  attr_accessor :is_over

  def initialize(word)
    @game_word = word
    p "#{@guess_word}"
    @guess_word = "-----"
    @guess_count = word.length
    @is_over = false
  end

  def initial_state(word_guess)
    if @guess_word.length == 0
      @game_word.length.times do |i|
        @guess_word << "-"
      end
    end
    @guess_word
  end

  def current_state(word_guess)
    p "current state"
  end

  def get_letter(letter)
    p "get letter"
    p "game word is not: #{@game_word}"
    p "guess wordkis before : #{@guess_word}"
    p "#{letter}"
    temp=@game_word.split(//)
    p "gamae word: #{temp}"
    if (temp.include? (letter))
       #@guess_word.split(/ /)
       p "This is guess word : #{@guess_word}"
      temp.each do |i|
         #p @guess_word[i]
        if i == letter
          temp.index(i)

          @guess_word[temp.index(i)] = letter 
         end
       end
    @guess_count -= 1
    end
    str = "a..zA..Z\-"
    word = ""
    
    # @guess_word.each do |c| 
    #   if c.chr =~ (/[a-zA-Z\-]/) 
    #   word <<c
    #   end 
    # end
    p "guess word: #{@guess_word}"
    @guess_word
  end

  def print_result(word_guess)
    p "if match congrats else boo!"
  end

end