
# Set up a loop to process multiple employees

puts "Welcome to Werewolf Inc. Vetting!"
puts "How many employees would you like to process?"
employees = gets.chomp.to_i

employees.times do 

  # Gather the data

  puts "What is your name?" 
    name = gets.chomp

  puts "How old are you?" 
    alleged_age = gets.chomp.to_i 

  puts "What year were you born?" 
    year_of_birth = gets.chomp.to_i 

      real_age = Time.now.year - year_of_birth 

  puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
    garlic_response = gets.chomp 
    if garlic_response == "y"
      garlic_bread = true
    else garlic_response == "n"
      garlic_bread = false
    end

  puts "Would you like to enroll in the company’s health insurance? (y/n)"
    health_response = gets.chomp 
    if health_response == "y"
      health_ins = true
    else health_response == "n"
      health_ins = false
    end 

  puts "Do you have any allergies? Enter each allergy individually, and type 'done' when finished."
    allergy = ""
    while allergy != "done" 
      allergy = gets.chomp
      next unless allergy == "sunshine"
        puts "Probably a vampire."
        allergy = "done"
        skip_to_end = true
      end
      if skip_to_end
        next
    end 


  puts "Calculating..."
  results_conclusive = false 

  # Determine if vampire 

  # If the employee got their age right, and is willing to eat garlic bread or sign up for insurance, the result is “Probably not a vampire.”

  if real_age == alleged_age && (garlic_bread || health_ins)
    result = "Probably not a vampire."
    results_conclusive = true 
  end

  # If the employee got their age wrong, and hates garlic bread or waives insurance, the result is “Probably a vampire.”

  if real_age != alleged_age && (!garlic_bread || !health_ins)
    result = "Probably a vampire."
    results_conclusive = true 
  end 

  # If the employee got their age wrong, hates garlic bread, and doesn’t want insurance, the result is “Almost certainly a vampire.”

  if real_age != alleged_age && !garlic_bread && !health_ins
    result = "Almost certainly a vampire."
    results_conclusive = true
  end 

  # Even if the employee is an amazing liar otherwise, anyone going by the name of “Drake Cula” or “Tu Fang” is clearly a vampire, because come on. In that case, you should print “Definitely a vampire.”

  if name == "Drake Cula" || name == "Tu Fang" 
    result = "Definitely a vampire."
    results_conclusive = true
  end 

  # Otherwise, print “Results inconclusive.”

  if results_conclusive == false
    result = "Results inconclusive."
  end 

  puts result 
end 

puts "Actually, never mind. Let's all be friends!" 