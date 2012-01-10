series = (1..100)

sum_of_sqrs = series.map{ |x| x*x }.reduce(:+) 
sqr_of_sum = series.reduce(:+)**2
puts sqr_of_sum - sum_of_sqrs
