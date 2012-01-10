def sumofmultiples( n, max )
	count = max/n
	sum = (count*(count+1)/2)*n
end

puts sumofmultiples(3,999) + sumofmultiples(5,999) - sumofmultiples(15,999)
