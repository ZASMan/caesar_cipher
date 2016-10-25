=begin
In cryptography, a Caesar cipher, also known as Caesar's cipher, the shift cipher, Caesar's code or Caesar shift, is one of the simplest and most widely known encryption techniques. It is a type of substitution cipher in which each letter in the plaintext is replaced by a letter some fixed number of positions down the alphabet. For example, with a left shift of 3, D would be replaced by A, E would become B, and so on. The method is named after Julius Caesar, who used it in his private correspondence.

caesar_cypher("What a string!", 5)
"Bmfy f xywnsl!"
=end

alphabet = {}
i = 1
#Map letters and numbers into a new Hash
('a'..'z').each do |letter|
	alphabet[letter] = i
	i += 1
end

def caesar_cypher(string, shift_factor)	
	#Downcase string
	string = string.downcase
	#Break String into an array of letters
	str_letters = string.split("")
	#Move the index n amount of places to the left
	str_letters.each do |letter|
		if alphabet.key?(letter)
			str_letters[letter] = alphabet[key - shift_factor]
		end
	end

end
