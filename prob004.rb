require 'generator'
def gen_dec_multiples( max )
	return  Generator.new { |g| 
	n = max*2
	while n > 0 do
		for i in (((n+1)/2)..max)
			p max, n, i, n-i 
			g.yield i*(n-i)
		end
		n -= 1
	end
	}
end

def is_palindrome(v)
	s = v.to_s
	for i in 0..((s.length-1)/2) do
		return false if s[i] != s[-(i+1)]
	end
	return true
end

v = nil
g = gen_dec_multiples(999)
begin
	v = g.next
end while not is_palindrome(v)
	puts v
