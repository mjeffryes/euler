def is_leap_year?( year )
	return (( year % 4 == 0 ) and ( ( year % 100 != 0 ) or ( year % 400 == 0 ) ))
end


def prob019()
	count = 0
	year  = 1900
	month = 0
	day_of_week = 1

	while year < 2001 do
		[31,28,31,30,31,30,31,31,30,31,30,31].each do |days|
			count += 1 if ( day_of_week == 0 and (1901..2000) === year )
			day_of_week += 1 if ( days == 28 && is_leap_year?(year) )
			day_of_week = ( day_of_week + days ) % 7
		end
		p "#{year}: #{count}"
		year += 1
	end
	p count
end

prob019()
