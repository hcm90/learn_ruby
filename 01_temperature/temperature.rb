def ftoc(temp)
	return ((temp.to_i - 32) * (5.0 / 9.0)).round
end
def ctof(temp)
	return ((temp.to_i * (9.0 / 5.0)) + 32).round
end