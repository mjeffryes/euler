#!/usr/bin/ruby

"""
digGits = [0,1,2,3,4,5,6,7,8,9]
1000000/(2*3*4*5*6*7*8*9) = 2.75 (1st position = 3rd lowest digit = 2)
1000000 - (2*3*4*5*6*7*8*9)*2 = 274240
digits = [0,1,3,4,5,6,7,8,9]
274240/(2*3*4*5*6*7*8) = 6.80 (2nd position = 7th lowest digit = 7)
274240 - (2*3*4*5*6*7*8)*6 = 32320
digits = [0,1,3,4,5,6,8,9]
32320/(2*3*4*5*6*7) = 6.41 (3rd position = 7th lowest digit = 8)
32320 - (2*3*4*5*6*7)*6 = 2080
digits = [0,1,3,4,5,6,9]
2080/(2*3*4*5*6) = 2.88 (4nth position = 3rd lowest digit = 3)
2080 - (2*3*4*5*6)*2 = 640
digits = [0,1,4,5,6,9]
640/(2*3*4*5) = 5.33 (5th position = 6th lowest digit = 9)
640 - (2*3*4*5)*5 = 40
digits = [0,1,4,5,6]
40/(2*3*4) = 1.67 (6th position = 2nd lowest digit = 1)
40 - (2*3*4)*1 = 16
digits = [0,4,5,6]
16/(2*3) = 2.67 (7th position = 3rd lowest digit = 5)
16 - (2*3)*2 = 4
digits = [0,4,6]
4/(2) = 2 (8th position = 3rd lowest digit = 6)
4 - (2)*2 = 0
digits = [0,4]
0/(1) = 0 (9th position = 1st lowest digit = 0)
digits = [4]
(10th position = 1st lowest digit = 4)

2783915604
"""


def nth_perm_of(n, list)
	if n == 0 then
		list
	else
		perms = (1..(list.length-1)).inject(:*)
		index = n/perms
		digit = list[index]
		list.delete_at(index)
		[digit].concat(nth_perm_of(n-perms*index, list))
	end
end

(999999..1000002).each{ |n|
	p nth_perm_of(n, [0,1,2,3,4,5,6,7,8,9]).join("")
}
