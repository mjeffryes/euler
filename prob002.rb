sum = 0
last = 1
x = 1
while x < 4000000 do
	new = x+last
	last = x
	x = new
	sum += x if( x % 2 == 0 )
end 
puts sum
