def robot(arms, legs)
  limbs = arms + legs
  puts limbs
  yield
end

robot(12, 24) { puts "That's a lot of limbs!" } 