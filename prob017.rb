sum_of_1_to_9 = "onetwothreefourfivesixseveneightnine".length

sum_of_10_to_19 = "teneleventwelvethirteenfourteenfifteensixteenseventeeneighteennineteen".length

sum_of_20_to_99 = "twentythirtyfortyfiftysixtyseventyeightyninety".length*10 + sum_of_1_to_9*8

sum_of_1_to_99 = sum_of_1_to_9 + sum_of_10_to_19 + sum_of_20_to_99

sum_of_100_to_999 = sum_of_1_to_9*100 + ("hundred".length*100 + "and".length*99 + sum_of_1_to_99)*9

sum_of_1_to_1000 = sum_of_1_to_99 + sum_of_100_to_999 + "onethousand".length

p sum_of_1_to_1000

