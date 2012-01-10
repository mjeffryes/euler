require 'generator'
def prime_gen()
	return  Generator.new { |g| 
		list = (2..2000).to_a
		n = 0
		while 1 do
			g.yield list[n]
			list.delete_if{ |x| x%list[n] == 0 }
			n += 1
		end
	}
end

g = prime_gen()

for i in 1..10 do
	puts g.next
end
puts g.next
