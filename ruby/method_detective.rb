# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

"iNvEsTiGaTiOn".swapcase # Creates a new string
"iNvEsTiGaTiOn".swapcase! # Overwrites the original string (!)
# => “InVeStIgAtIoN”

"zom".insert(2, "o") 
"zom".replace "zoom" 
"zom".gsub(/o/, "oo") 
"zom".gsub!(/o/, "oo") 
# => “zoom”

"enhance".center(15)
# => "    enhance    "

"Stop! You’re under arrest!".upcase # or upcase!
# => "STOP! YOU’RE UNDER ARREST!"

"the usual".insert(-1, " suspects")
#=> "the usual suspects"

" suspects".insert(0, "the usual")
# => "the usual suspects"

"The case of the disappearing last letter".chomp("r")
"The case of the disappearing last letter".chop 
# => "The case of the disappearing last lette"

"The mystery of the missing first letter".delete "T"
# => "he mystery of the missing first letter"

"Elementary,    my   dear        Watson!".squeeze(" ")
# => "Elementary, my dear Watson!"

"z".ord
# => 122 
# 122 is the 'integer ordinal' of z - its position on the ASCII table. Whatever that means!

"How many times does the letter 'a' appear in this string?".count "a"
# => 4