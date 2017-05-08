require_relative 'wordgame'

describe WordGame do 
  let(:game) { WordGame.new("unicorn") }

  it "stores the correct answer provided by user" do
    expect(game.store_answer).to eq ["u", "n", "i", "c", "o", "r", "n"]
  end

  it "creates an array of underscores for showing progress" do 
    expect(game.progress).to eq ["_", "_", "_", "_", "_", "_", "_"] 
  end 

  it "determines the number of guesses allowed" do 
    game.store_answer
    expect(game.guesses_allowed).to eq 5
  end 

  # it "determines whether the guess is a full word" do
  #   expect(game.full_word("u")).to eq false 
  # end

  # it "checks if a one-letter guess is correct" do 
  #   game.store_answer
  #   expect(game.letter_correct("c")).to eq true 
  # end 

  # it "checks if a full-word guess is correct" do
  #   expect(game.word_correct("unicorn")).to eq true 
  # end 

  it "checks if a guess is correct" do 
    game.store_answer
    game.progress 
    expect(game.guess_check("uni")). to eq true
  end 

  it "inserts a guess into the progress array" do
    game.store_answer 
    game.progress 
    game.guess_check("o")
    expect(game.show_progress).to eq "_ _ _ _ o _ _"
  end 
end 