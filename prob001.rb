sum = 0
(1..999).each do |x|
	if( ( x % 5 == 0 ) or ( x % 3 == 0 ) ) then
		sum += x
	end
end
puts sum
