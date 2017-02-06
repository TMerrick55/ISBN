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
	isbn_array.inject(:+)
end