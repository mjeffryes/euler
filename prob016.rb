sum = 0
num = 2**1000
num.to_s.chars{ |c| sum += c.to_i }
p sum
