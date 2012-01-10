require 'prob007.rb'
g = prime_gen()
n = 0
sum = 0
while n < 2000000 do
	n = g.next
	sum += n
end
puts sum
