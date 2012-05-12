def chain_len( n )
	count = 1
	while n != 1
		n = ( n%2 == 0 ? n/2 : 3*n + 1 )
		count += 1
	end
	return count
end

def prob014()
	max = 1
	for n in 2..1000000
		l = chain_len( n )
		max = l if l > max
	end
	print max
end
