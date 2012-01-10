n = 999
while n > 990 do
	for i in (0..(999-n))
		puts (n+i)*(n-i)
	end
	n -= 1
end
