class Santa
  attr_reader :ethnicity 
  attr_accessor :age, :gender 

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}!"
  end

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"] 
    @age = 0 
  end 

  def about
    puts "Gender: #{@gender}"
    puts "Ethnicity: #{@ethnicity}"
    puts "Reindeer Ranking: #{@reindeer_ranking}"
    puts "Age: #{@age}"
  end

  def celebrate_birthday
    @age + 1
  end

  def get_mad_at(reindeer_name)
    @reindeer_ranking.delete_at(@reindeer_ranking.index(reindeer_name))
    @reindeer_ranking.insert(-1, reindeer_name)
  end

# getter methods 
  # def age
  #   @age
  # end

  # def ethnicity 
  #   @ethnicity
  # end 

# setter method
  # def gender=(new_gender)
  #   @gender = new_gender 
  # end
end


# create arrays for example genders and example ethnicities

example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

# make lots of Santas


puts "How many Santas?"
number_of_santas = gets.chomp.to_i 

santas = []

number_of_santas.times do
  santas << Santa.new(example_genders.sample, example_ethnicities.sample)
end

# assign each Santa's age to a random number between 0 and 140

santas.each do |santa|
  santa.age = rand(0..140)
  santas 
end

# print attributes of each Santa using instance methods

santas.each do |santa|
  santa.about
end 



#-------TEST CODE-------------------------
# santa1 = Santa.new("female", "black")
# p santa1.get_mad_at("Dancer")
# santa1.speak
# santa1.eat_milk_and_cookies("M&M cookie")

# santa1 = Santa.new("female", "latina")
# santa1.about 
#-----------------------------------------