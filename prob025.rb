last = 1
x = 1
n=2
while x < 10**999 do
	x, last = ( x + last ), x
	n += 1
end 
puts n
