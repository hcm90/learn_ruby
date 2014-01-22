def reverser
string = yield
if string.include?(" ")
	split = string.split(" ").each{|x| x.reverse!}.join(" ")
	return split
else
	return string.reverse!
end
end

def adder(x = 1)
	string = yield + x
end

def repeater(x = 1)
        x.times.map {|current| yield(current)}
end