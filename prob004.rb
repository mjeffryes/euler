n = 9*2
while n > 0 do
	for i in (((n+1)/2)..9)
		puts i*(n-i)
	end
	n -= 1
end
