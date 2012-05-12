
$cache = {}
def chain_len( n )
	return 1 if n == 1
	return $cache[n] if $cache.has_key?(n)
	len = ( n%2 == 0 ? chain_len( n/2 ) : chain_len( 3*n + 1 ) ) + 1
	$cache[n] = len
	return len
end

def prob014()
	max = 1
	nmax = 1
	for n in 2..1000000
		l = chain_len( n )
		if l > max
			max = l
			nmax = n
		end
	end
	p nmax => max
end
