
# WORD GAME PSEUDOCODE 

# Initialize the game
#  - Create empty correct-answer array
#  - Create empty progress array
#  - Number of guesses is zero

class WordGame
  def initialize(user_input)
    @user_input = user_input 
    @correct_answer = []
    @track_progress = []
    @guess_count = 0 
  end

# Store the correct answer
#  - Input: word as a string
#  - Divide input string into separate characters and store in correct-answers array
#  - Store underscores, the same number as correct-answer letters, to progress array
#  - Output: array - progress (underscores)

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

# Determine the number of guesses allowed
#  - Input: number of letters in the correct-answer array
#  - If the number of letters is less than 7:
#     - the allowed number of guesses is 4
#  - If the number of letters is between 7 and 10:
#     - the allowed number of guesses is 5
#  - If the number of letters is over 10:
#     - the allowed number of guesses is 6
#  - Output: integer - allowed number of guesses

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

# Determine whether to run the one-letter guess method or the full-word guess method
#  - Input: string of one or more letters
#  - IF the string is more than one letter:
#     - full word is true
#     - Run the method for a full-word guess
#  - IF the string is one letter:
#     - full word is not true
#     - Run the method for a one-letter guess
#  - Output: boolean - full word/not full word

  def full_word(user_guess)
    if user_guess.length == 1
      @full_word = false
    elsif user_guess.length > 1
      @full_word = true
    end
    @full_word 
  end 

end





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