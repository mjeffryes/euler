#!/usr/bin/ruby

out = 0
File.open("names.txt", 'r'){ |f|
	lines = f.readlines
	sorted = lines.sort
	scores = sorted.map { |line|
		line.strip.bytes.map{ |b|  b - 0x40 }.reduce(:+)
	}
	scores.each_with_index{ |s,i| out += s*(i+1) }
}
p out

