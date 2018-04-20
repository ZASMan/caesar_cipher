# In cryptography, a Caesar cipher, also known as Caesar's cipher, the shift cipher, Caesar's code or Caesar shift, is one of the simplest and most widely known encryption techniques. It is a type of substitution cipher in which each letter in the plaintext is replaced by a letter some fixed number of positions down the alphabet. For example, with a left shift of 3, D would be replaced by A, E would become B, and so on. The method is named after Julius Caesar, who used it in his private correspondence.
#
# caesar_cypher("What a string!", 5)
# "Bmfy f xywnsl!"

# Arguements are a string and number as the shift factor
def caesar_cipher(str, n)
  # Create array with alphabet
  alphabet = ('a'..'z').to_a
  # result will go here
  cipher = ''
  # Downcase string
  # "STRING" > "string"
  str_down = str.downcase
  # Break String into an array of letters
  # "string" > ['s', 't', 'r', 'i', 'n', 'g']
  str_letters = str_down.split('')
  # Move the index n amount of places to the left
  str_letters.each do |letter|
    # Check if alphabet array has letter from string
    next unless alphabet.include?(letter)
    # Finds where the index of the letter is in the alphabet, then add n to get the sum of the letter_index.
    # So if letter is "p", it would be at the 15 index in the alphabet. If n = 5,
    # 5 added it would be 20. So letter_index = 20, which would put the letter "u" into the cipher
    letter_index = alphabet.find_index(letter) + n
    puts 'letter index is less than ' + alphabet.length.to_s + ', so letter_index is ' + letter_index.to_s
    puts 'The corresponding letter for this is ' + alphabet[letter_index].to_s
    if letter_index >= alphabet.length
      # If the letter index is greater than or equal to 26, change the
      # letter_index to a letter within the alphabet. So, if letter is "p" and n is equal to 25
      # the letter_index will be equal to 40 (while the alphabet array length is 26)
      # 40 - 25 will put the letter index to 15. The 15 index of the alphabet will be "o",
      # which will be inserted into the cipher
      letter_index -= alphabet.length
      puts 'letter index is greater than ' + alphabet.length.to_s + ', so it is ' + letter_index.to_s
      puts 'The corresponding letter is ' + alphabet[letter_index].to_s
    end
    # The resulting letter is added to the blank cipher string
    cipher += alphabet[letter_index]
  end
  cipher
  puts 'The final encrypted cipher is ' + cipher
  puts '_____________________________________________________________________________'
end

puts "The result for the string 'pizza' with a shift factor of 25 is"
caesar_cipher('pizza', 25)
puts "The result for the string 'pizza' with a shift factor of 26 is"
caesar_cipher('pizza', 26)
puts "The result for the string 'pizza' with a shift factor of 5 is"
caesar_cipher('pizza', 5)
