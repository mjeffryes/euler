require 'generator'
def triangle_gen()
	return  Generator.new { |g| 
		n = 1
		tri = 0
		while 1 do
			tri += n
			g.yield tri
			n += 1
		end
	}
end

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

g = triangle_gen()
length = 0
while length < 500 do
	n = g.next
	length = listdivisors(n).count
end
puts n
