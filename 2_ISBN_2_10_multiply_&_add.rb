# The check digit for ISBN-13 is calculated by multiplying each digit 
# alternately by 1 or 3 (i.e., 1 x 1st digit, 3 x 2nd digit, 
# 1 x 3rd digit, 3 x 4th digit, etc.), summing these products together, 
# taking modulo 10 of the result and subtracting value from 10, 
# and then taking the modulo 10 of the result again to produce a single digit.

def multiply(isbn_num)
	isbn_values = []
	isbn_array = isbn_num.split('')
	isbn_array.each_with_index do |value, index|
		if index < 12
			# positions 1st, 3rd, 5th, 7th, 9th, 11th multiply by 1 (UNSURE OF HOW TO PROCEED PAST THIS POINT!!!)
			# positions 2nd, 4th, 6th, 8th, 10th, 12th multiply by 3
			# followed by 'ends' for multiply function


# sum results before taking the modulo 10 of said result and subtract that value from 10. 'ends'
# again take modulo 10 of result to produce a single digit: ISBN-13 check digit. 'ends(?)'