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

encrypt("the cat meows")