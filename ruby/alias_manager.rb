# 5.5 RELEASE 0

# Pseudocode and write a method that takes a spy's real name (e.g., "Felicia Torres") and creates a fake name with it by doing the following:

# 1. Swapping the first and last name.
# 2. Changing all of the vowels to the next vowel in 'aeiou', and all of the consonants to the next consonant in the alphabet.

# IF you get really and truly stuck, just write an alias method that loops through the original name and changes the letters somehow.

# Success: "Felicia Torres" => "Vussit Gimodoe" 


# PSEUDOCODE
# Convert this assignment into an algorithm. (User interface comes later.)

#1. Swap the first and last name
# => Use .split(' ') to divide full name string into array of first and last
# => Use .reverse to swap the two names
# => Use .join(' ') to put the two names back into a single string

#2. For each name (first, last), change all vowels to the next vowel in 'aeiou'
# => Use .chars to divide name into array of characters
# => Use .map! do method to iterate through characters
# => If a vowel, use .gsub to define pattern /[aeiou]/ and .next to change vowels 

#3. For each name (first, last), change all consonants to next consonant 
# => If a consonant, use .gsub to define pattern /[bcdfghjklmnpqrstvwxyz]/ and .next to change consonants 
# => Close .map! do method
# => Use .join('') to put chars back together into a string for each name


def encode_name(full_name)

  reverse_name = full_name.split(' ').reverse!.join(' ')
  # Full name is now reversed and is a two-word string

  reverse_name.downcase! 
  # Reversed name is now downcased for encrypting. 


  alpha = "abcdefghijklmnopqrstuvwxyz"
  letters = alpha.split('')

  vowels = ['a', 'e', 'i', 'o', 'u']
  consonants = letters - vowels 



  coded_letters = reverse_name.chars.map! do |letter|
    if vowels.include? letter
      vowels[vowels.index(letter) + 1]
    elsif 
      consonants.include? letter 
      consonants[consonants.index(letter) + 1] 
    else
      letter 
    end
  end

  code_name = coded_letters.join('').split(' ')

  code_name.map! do |name|
    name.capitalize!
  end 
  
  code_name.join(' ')

end


# USER INTERFACE
# Let the user enter a name and get a fake name back, repeatedly, until they decide to quit by typing 'quit'.

loop do 
  puts "Enter a name to encode (or type 'quit' to exit):"
  inputted_phrase = gets.chomp
  break if inputted_phrase == "quit" 
  puts "Your code name is #{encode_name(inputted_phrase)}!"
end

