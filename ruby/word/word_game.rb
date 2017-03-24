#5.7 Solo Challenge - Word Game
#Name: Saham Khozestani
#
class WordGame
  attr_reader :word
  attr_reader :guess_count
  attr_reader :is_over

  def initialize(word)
    @game_word = word
    @guess_count = word.length
    @is_over = false
  end

  def initial_state(word_guess)
    if word_guess.length == 0
      @game_word.length.times do |i|
        word_guess << "_"
      end
    word_guess
  end

  def current_state(word_guess)
    p "current state"
  end

  def get_letter(letter)
    p "get letter"
  end

  def print_result(word_guess)
    p "if match congrats else boo!"
  end

end