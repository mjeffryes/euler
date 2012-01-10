require 'generator'
def prime_gen()
	return  Generator.new { |g| 
		primes = []
		n = 2
		while 1 do
			prime = true
			for p in primes do
				if n%p == 0 then
					prime = false
					break
				end
			end
			if prime then
				primes << n 
				g.yield n
			end
			n += 1
		end
	}
end

g = prime_gen()

for i in 1..10000 do
	g.next
end
puts g.next
