def listfactors( value )
	list = []
	factor = 2
	while factor <= Math.sqrt(value) do
		if( value % factor == 0 )
			list << factor 
			value /= factor
		else
			factor = factor + 1
		end
	end
	list << value
	return list
end

def listdivisors( value )
	divisors = [1,value]
	factors = listfactors(value)
	n = factors.count - 1
	while n > 0 do
		factors.combination(n){ |combo|
			divisors << combo.reduce(:*)
		}
		n -= 1
	end
	return divisors.uniq
end

def sumofdivisors( n )
	listdivisors(n).reduce(:+) - n
end

result = 0
max = 10000

sum_of_divisors = [0, 1] + (2..max).map{ |n| sumofdivisors(n) }

sum_of_divisors.each_with_index { |sum, n|
	if( sum != n )
		if( ( sum <= max and sum_of_divisors[sum] == n ) or ( sum > max and sumofdivisors(sum) == n ) )
			p [n, sum]
			result += n
		end
	end
}

p result
