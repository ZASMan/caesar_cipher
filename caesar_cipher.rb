=begin
In cryptography, a Caesar cipher, also known as Caesar's cipher, the shift cipher, Caesar's code or Caesar shift, is one of the simplest and most widely known encryption techniques. It is a type of substitution cipher in which each letter in the plaintext is replaced by a letter some fixed number of positions down the alphabet. For example, with a left shift of 3, D would be replaced by A, E would become B, and so on. The method is named after Julius Caesar, who used it in his private correspondence.

caesar_cypher("What a string!", 5)
"Bmfy f xywnsl!"
=end


#Arguements are a string and number as the shift factor
def caesar_cipher(str, n)	
	#Create array with alphabet
	alphabet = ('a'..'z').to_a
	#result will go here
	cipher = ""
	#Downcase string
	# "STRING" > "string"
	str_down = str.downcase
	#Break String into an array of letters
	# "string" > ['s', 't', 'r', 'i', 'n', 'g']
	str_letters = str_down.split("")
	#Move the index n amount of places to the left
	str_letters.each do |letter|
		#Check if alphabet array has letter from string
		if alphabet.include?(letter)
			letter_index = alphabet.find_index(letter) + n
			letter_index = letter_index - alphabet.length if letter_index >= alphabet.length
			cipher += alphabet[letter_index]
		end
	end
	puts cipher
end

puts "The result for the string 'pizza' with a shift factor of 5 is"
caesar_cipher("pizza", 5)
puts "The result for the string 'America' with a shift factor of 10 is"
caesar_cipher("America", 10)
