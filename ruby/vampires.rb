# DBC 4.4
# Interview with the Vampire

# Ask the user how many employees will be processed.
# After the result is printed for the first employee, start over and repeat
# until all the employees have been processed. 

puts "How many employees are you processing today?"
employees = gets.chomp

number = 0
while number < employees.to_i 
  number += 1

  # Ask a new employee the following questions: 
  # What is your name? 
  # How old are you? 
  # What year were you born? 
  # Our company cafeteria serves garlic bread. Would you like us to order some for you? 
  # Would you like to enroll in the company's health insurance?
  
  puts "What is your name?"
  name = gets.chomp
  
    # Do they have a vampire name??

    if name == "Drake Cula"
      vampire_name = true
    elsif name == "Tu Fang"
      vampire_name = true
    else 
      normal_name = true
    end 
  
  puts "How old are you?"
  alleged_age = gets.chomp
  
  puts "What year were you born?"
  birth_year = gets.chomp
  
  puts "Our cafeteria serves garlic bread. Would you like us to order some for you? (Y/N)"
  garlic_bread = gets.chomp
  
  puts "Would you like to enroll in the company's health insurance? (Y/N)"
  health_insurance = gets.chomp

  # Add a loop to ask about allergies; if sunshine is an allergy, print "Probably a vampire."

  puts "Do you have any allergies? List one at a time, then enter 'done' to exit."

    allergy = ""
    while allergy != "done"
      allergy = gets.chomp
      if allergy == "sunshine"
        puts "Probably a vampire."
        break
        break
      end
    end
  
  # Account for lazy or invalid answers to Y/N questions.
  
  if garlic_bread.upcase == "Y"
    yes_garlic = true
  elsif garlic_bread.upcase == "N"
    no_garlic = true
  else
    garlic_bread = nil 
  end 
  
  if health_insurance.upcase == "Y"
    yes_insurance = true
  elsif health_insurance.upcase == "N"
    no_insurance = true
  else
    health_insurance = nil 
  end
  
  # To check if the vampire is lying, determine if their age and birth year align.
  # We need a separate variable to store whether their "real age" checks out.
  
  real_age = 2017 - birth_year.to_i
  
  if real_age == alleged_age.to_i 
    right_age = true
  else
    wrong_age = true
  end 
  
  
  # If the employee got their age right, and is willing to eat garlic bread 
  # OR sign up for insurance, the result is "Probably not a vampire."
  
  if normal_name && right_age && (yes_garlic || yes_insurance)
    puts "Probably not a vampire."
  
  # If the employee got their age wrong, and hates garlic bread OR waives
  # insurance, the result is "Probably a vampire."
  
  elsif normal_name && wrong_age && (no_garlic || no_insurance)
    puts "Probably a vampire."
    
  # If the employee got their age wrong, hates garlic bread, AND doesn't want
  # insurance, the result is "Almost certainly a vampire."
  
  elsif normal_name && wrong_age && no_garlic && no_insurance
    puts "Almost certainly a vampire."
  
  # Anyone going by the name of "Drake Cula" or "Tu Fang" is clearly a vampire.
  # In that case, print "Definitely a vampire." 
  
  elsif vampire_name
    puts "Definitely a vampire."
  
  # Otherwise, print "Results inconclusive."
  
  else
    puts "Results inconclusive."
  end 

  # Print the result at the end of the survey.

end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."