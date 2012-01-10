require "prob003.rb"

factors = {}

for i in 1..20 do
	fl = listfactors( i )
	fh = Hash[fl.map{ |x| [x, fl.count(x)] }]
	factors.update(fh){|key, v1, v2| [v1, v2].max }
end
n = 1
factors.each{ |k,v| n *= k**v }
puts n
