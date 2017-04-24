# Make a method called 'encrypt' that advances every letter of a string one letter forward.
# Input and output can both be lowercase.
# Leave space character as a space instead of converting it.

# For each letter in a string, use 'next' to shift each letter to the next in alpha order.
# For each space, do nothing to that space.
# For example, 'the cat meows' would become 'ugf dbu nfpxt' 

def encrypt(password)
  index = 0

  while index < password.length
    if password[index] == " "
      print password[index]
    else 
      print password[index] = password[index].next
    end
    index += 1
  end

end

# Find out where a letter is in the alphabet
  # alphabet.index(password[index_variable])

# Access the letter right before it

def decrypt(password)
  index = 0
  alphabet = "abcdefghijklmnopqrstuvwxyz" 

  while index < password.length
    if password[index] == " "
      print password[index] 
    else
      alpha_index = (alphabet.index(password[index]) - 1)
      print alphabet[alpha_index]
    end
    index += 1
  end 

end

decrypt("ruby is absurd")