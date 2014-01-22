class Temperature

attr_accessor :c
attr_accessor :f

	def initialize(temperature)
		:c = {c => temperature}
		:f = {f => temperature}
	end

	def to_fahrenheit

end2