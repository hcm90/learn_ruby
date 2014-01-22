class Array

	def sum
		inject(0){|sum, array| sum + array}
	end

	def square
		if empty?
			return []
		else
			map{|x| x ** 2} 
		end
	end

	def square!
		if empty?
			return []
		else
			map!{|x| x ** 2} #Remember, ! is "with a bang": It's a destructive method used to reassign
		end					 #the value of the variable!!!
	end

end