# Release 0

def robot(arms, legs)
  limbs = arms + legs
  puts limbs
  yield
end

robot(12, 24) { puts "That's a lot of limbs!" } 


# Release 1

age_of_robots = [1, 25, 13, 43, 5, 610]

robot_features = {
  :eyes => 2,
  :mouths => 3,
  :arms => 12,
  :legs => 24,
  :buttons => 100
}

age_of_robots.each do |age|
  puts "This robot is #{age} today!"
end

robot_features.each do |feature, number|
  puts "This robot has a whopping #{number} #{feature}."
end

age_of_robots.map! do |age|
  puts age
  age.next 
end

p age_of_robots 