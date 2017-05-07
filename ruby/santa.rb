class Santa

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

end

# santa1 = Santa.new
# santa1.speak
# santa1.eat_milk_and_cookies("M&M cookie")

santa1 = Santa.new("female", "latina")

santa1.about 