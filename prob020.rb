sum = 0
num = (1..100).reduce(:*)
num.to_s.chars.each do |d|
	sum += d.to_i
end
p sum
