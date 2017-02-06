def multiply (isbn_num)
	isbn_values = []
	isbn_array = isbn_num.split('')
	isbn_array.each_with_index do |value, index|
		if index < 9
			num = value.to_i * (index + 1)
			isbn_values.push(num)
		end
	end
	isbn_values
end

def sum(isbn_array)
	# isbn_array.inject(:+)
	counter = 0
	isbn_array.each do |value|
	counter += value # 'counter = counter + value'
	end
	counter
end

def remainder(sum)
	sum % 11
end

def compare_check_digit(isbn_num)
	
	isbn_value = multiply(isbn_num) # function equals variable(backwards)
	isbn_total = sum(isbn_value)	# function equals variable('')
	isbn_mod = remainder(isbn_total) # function equals variable('')

	if isbn_mod == 10 && isbn_num[-1].match(/[xX]/)
		true
	elsif isbn_num[-1].to_i == isbn_mod
		true
	else
		false
	end
end