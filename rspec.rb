def make_change(x)
	coins = []
	until (x % 25 == x) do 
		x -= 25
		coins << 25
	end
	until (x % 10 == x) do
		x -= 10
		coins << 10
	end
	until (x % 5 == x) do
		x -= 5
		coins << 5
	end
	until (x % 1 == x) do
		x -= 1
		coins << 1
	end
	return coins
end