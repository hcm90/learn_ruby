def translate(string)
	vowels = ['a', 'e', 'i', 'o', 'u']
	consonants = ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'y', 'z'] 
	if vowels.include?(string[0])
		return string + "ay"
	elsif consonants.include?(string[0]) && consonants.include?(string[1])
		firstchar = string[0]
		secondchar = string[1]
		return string[2..-1] + firstchar + secondchar + "ay"
	elsif consonants.include?(string[0])
		firstchar = string[0]
		return string[1..-1] + firstchar + "ay"
	end
end