def listfactors( value )
	list = []
	factor = 2
	while factor <= Math.sqrt(value) do
		if( value % factor == 0 )
			list << factor 
			value /= factor
		else
			factor = factor + 1
		end
	end
	list << value
	return list
end
