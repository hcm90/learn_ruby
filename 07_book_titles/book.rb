class Book

	def title=(string)
		@title = string
	end

	def title
		@title.capitalize
	end

	def title
		array = @title.split
        little_words = ["and", "over", "or", "the", "of", "a", "an", "in"]
        array.each do |i|
                        i.capitalize! unless little_words.any? { |x| i == x }
        end
        array[0].capitalize!
        array.join(" ")
        end
end