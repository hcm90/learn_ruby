def echo(phrase)
	return phrase
end
def shout(phrase)
	return phrase.upcase
end
def repeat(phrase, num = 2)
	return ([phrase] * num).join ' '
end
def start_of_word(phrase, num)
	return phrase[0..num.to_i-1]
end
def first_word(phrase)
	return phrase.split[0...1].join(' ')
end
def titleize(string)
        words = string.split(' ')
        words.each_with_index do |word, index|
                if index == 0 
                        word.capitalize!
                        else
                                if word == "and" 
                                        word
                                elsif word == "the" 
                                        word
                                elsif word == "over"
                                        word
                                else
                                         word.capitalize!
                                 end
                 end
         end.join(' ')
end