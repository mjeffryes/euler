require 'set'
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

abundant = (12..28123).select { |n|
	listdivisors(n).reduce(:+) > 2*n
}

abundant_set = abundant.to_set

not_abundant_sum = (1..28123).reject { |n|
  i = 0
  while( n - abundant[i] >= 12 )
    if( abundant_set.member?(n - abundant[i]) )
      break
    end
    i += 1
  end
  abundant_set.member?(n - abundant[i])
}

p not_abundant_sum.take(24)
p not_abundant_sum.reduce(:+)
