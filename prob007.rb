require 'generator'
def prime_gen()
	return  Generator.new { |g| 
		primes = []
		n = 2
		while 1 do
			if primes.count{ |p| n%p == 0 } == 0 then
				primes << n 
				g.yield n
			end
			n += 1
		end
	}
end

g = prime_gen()

for i in 1..1000 do
	g.next
end
puts g.next
