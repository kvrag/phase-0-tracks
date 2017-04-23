# DBC 4.4
# Interview with the Vampire

# Ask a new employee the following questions: 
# What is your name? 
# How old are you? 
# What year were you born? 
# Our company cafeteria serves garlic bread. Would you like us to order some for you? 
# Would you like to enroll in the company's health insurance?

puts "What is your name?"
name = gets.chomp

puts "How old are you?"
alleged_age = gets.chomp

puts "What year were you born?"
birth_year = gets.chomp

puts "Our cafeteria serves garlic bread. Would you like us to order some for you? (Y/N)"
garlic_bread = gets.chomp

puts "Would you like to enroll in the company's health insurance? (Y/N)"
health_insurance = gets.chomp

# Account for lazy or invalid answers to Y/N questions.

case garlic_bread 
if garlic_bread == "Y"
  garlic_bread = true
elsif garlic_bread == "N"
  garlic_bread = false
else
  health_insurance = nil 
end 

case health_insurance
if health_insurance == "Y"
  health_insurance = true
elsif health_insurance == "N"
  health_insurance = false
else
  health_insurance = nil 
end

# To check if the vampire is lying, determine if their age and birth year align.
# We need a separate variable to store whether their "real age" checks out.

alleged_age.to_i
birth_year.to_i
2017 - birth_year = real_age

if real_age == birth_age
  real_age = true
end 

# If the employee got their age right, and is willing to eat garlic bread 
# OR sign up for insurance, the result is "Probably not a vampire."


# If the employee got their age wrong, and hates garlic bread OR waives
# insurance, the result is "Probably a vampire."


# If the employee got their age wrong, hates garlic bread, AND doesn't want
# insurance, the result is "Almost certainly a vampire."

# Anyone going by the name of "Drake Cula" or "Tu Fang" is clearly a vampire.
# In that case, print "Definitely a vampire." 


# Otherwise, print "Results inconclusive."

# Print the result at the end of the survey.