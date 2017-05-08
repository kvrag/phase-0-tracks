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
    expect(game.guesses_allowed).to eq 5
  end 

  it "determines whether to guess one letter or full word" do
  end

  it "checks if a one-letter guess is correct" do 
  end 

  it "checks if a full-word guess is correct" do
  end 
end 