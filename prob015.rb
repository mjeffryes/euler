#this problem produces pascals triangle
#the value of a given entry in pascals triangle is 
# (n+m)!/(n!*m!)
#where n and m are the distances from the peak along the two sides
#hence,

def factorial( n )
	return n == 0 ? 1 : n * factorial( n - 1 )
end

p factorial(40)/(factorial(20)*factorial(20))

