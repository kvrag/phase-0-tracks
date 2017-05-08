
#----PSEUDOCODE---------------

# Initialize the game
#  - Create empty correct-answer array
#  - Create empty progress array
#  - Number of guesses is zero

# Store the correct answer
#  - Input: word as a string
#  - Divide input string into separate characters and store in correct-answers array
#  - Store underscores, the same number as correct-answer letters, to progress array
#  - Output: array - progress (underscores)

# Determine the number of guesses allowed
#  - Input: number of letters in the correct-answer array
#  - If the number of letters is less than 7:
#     - the allowed number of guesses is 4
#  - If the number of letters is between 7 and 10:
#     - the allowed number of guesses is 5
#  - If the number of letters is over 10:
#     - the allowed number of guesses is 6
#  - Output: integer - allowed number of guesses

# Determine whether to run the one-letter guess method or the full-word guess method
#  - Input: string of one or more letters
#  - IF the string is more than one letter:
#     - full word is true
#     - Run the method for a full-word guess
#  - IF the string is one letter:
#     - full word is not true
#     - Run the method for a one-letter guess
#  - Output: boolean - full word/not full word

# Check if a one-letter guess is correct/incorrect
#  - Input: one letter
#  - WHILE guesses <= allowed number:
#     - Iterate through the array
#       - IF the input matches one or more characters:
#           - return the index(es) of the character(s) in the array
#           - insert input into progress array at these indexes, deleting the underscores that were in their place
#           - correct is true
#           - the number of guesses goes up by one
#           - return changed progress array
#       - IF the input is a repeat (appears in the array of guesses): 
#           - correct is true
#           - the number of guesses stays the same
#           - return unchanged progress array
#       - IF the input does not match any characters: 
#           - correct is false
#           - the number of guesses goes up by one
#           - return unchanged progress array
#  - WHEN the number of guesses is greater than the allowed number:
#     - Prompt a full-word guess
#     - YIELD to full-word guess method
#  - Output: boolean - correct/not correct

# Check if a full-word guess is correct/incorrect
#  - Input: a string of more than one letter
#  - Establish that win is not true
#  - Divide input string into an array of letters
#  - Compare this array to the correct-answer array
#     - IF the arrays match:
#       - win is true 
#     - IF otherwise:
#       - win is not true
#  - Output: boolean - win/not win


#----BUSINESS LOGIC---------------

class WordGame
  attr_reader :track_progress, :guess_count, :full_word, :word_correct, :letter_correct, :allowed_guesses   

  def initialize(user_input)
    @user_input = user_input 
    @correct_answer = [] 
    @track_progress = []
    @guess_count = 0 
  end


  def store_answer
    @correct_answer = @user_input.chars 
    @correct_answer 
  end 

  def progress
    @user_input.length.times do
      @track_progress << "_" 
    end 
    @track_progress
  end

  def guesses_allowed
    if @user_input.length < 7
      @allowed_guesses = 4
    elsif @user_input.length > 10
      @allowed_guesses = 6
    else 
      @allowed_guesses = 5
    end 
    @allowed_guesses 
  end 

  def full_word(user_guess)
    if user_guess.length == 1
      @full_word = false
    elsif user_guess.length > 1
      @full_word = true
    end
    @full_word 
  end 

  def letter_correct(user_guess)
      if @correct_answer.include?(user_guess)
        letter_correct = true
        @guess_count += 1
      elsif @track_progress.include?(user_guess)
        letter_correct = true 
      else
        letter_correct = false
        @guess_count += 1
      end
      letter_correct 
  end 

  def show_progress(user_guess)
    @correct_answer.each do |letter|  
      if letter == user_guess
        letter_idx = @correct_answer.index(user_guess) 
        @track_progress.delete_at(letter_idx)
        @track_progress.insert(letter_idx, letter)
      else
        @track_progress
      end
    end
    p @track_progress.join(" ")
  end

  def word_correct(user_guess)
    if user_guess == @user_input 
      word_correct = true
    else
      word_correct = false
    end
    word_correct 
  end
end

#----USER INTERFACE---------------

puts "Welcome to the Word Game, for two players!"
puts "Player 1, what is the secret word?"
game = WordGame.new(gets.chomp)

game.store_answer
game.progress
game.guesses_allowed
puts "Player 2, you get #{@allowed_guesses} guesses!"

until @guess_count > @allowed_guesses
  puts "Guess a letter or the full word."
  guess = gets.chomp
  game.full_word(guess) 

    if @full_word
      game.word_correct(guess)
      if @word_correct 
        puts "You win!!!" 
        break
      else
        puts "Nope, guess again."
        game.show_progress(guess)
      end
      @guess_count += 1
    elsif !@full_word 
      game.letter_correct(guess)
      if @letter_correct
        puts "Great guess! Now, guess again."
        game.show_progress(guess)
      else
        puts "Nope, guess again."
        game.show_progress(guess)
      end
      @guess_count += 1
    end
end

puts "Thanks for playing!"





#----TEST CODE--------------------
# name = "kristina"
# game = WordGame.new("unicorn")

# p game.letter_correct("c")
# p game.progress
# p game.show_progress("c")



