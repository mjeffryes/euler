require 'generator'

def prime_gen()
	return  Generator.new { |g| 
		primes = []
		n = 2
		while 1 do
			root = Math.sqrt(n).to_i + 1
			prime = true
			for p in primes do
				break if p > root
				if n%p == 0  then
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
n = 0
sum = 0
while n < 2000000 do
	sum += n
	n = g.next
end
puts sum
