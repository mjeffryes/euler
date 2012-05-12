
def chain_len( n )
	return 1 if n == 1
	if n%2 == 0
		return chain_len( n/2 ) + 1 
	else
		return chain_len( 3*n + 1 ) + 1
	end
end

def prob014()
	max = 1
	for n in 2..1000000
		l = chain_len( n )
		max = l if l > max
	end
	print max
end
