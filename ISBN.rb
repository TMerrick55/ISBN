def valid_isbn?(isbn_num)
	string_no_dash_or_space = remove_spaces_and_dashes(isbn_num)
		if valid_ISBN_length?(string_no_dash_or_space)
			true
		else
			false
		end
end
	# check_for_letters(isbn_remove_spaces_dashes)
	# check_for_x(check_for_letters)
	# check_for_symbols()
	# compare_remain_to_check(isbn_num)

# end

def valid13isbn?(isbn_string)
	# takes string and return to boolean
	isbn13_array = isbn_string.split('').map(&:to_i)
	# isbn13_array_integer = []
	# isbn13_array.each do |item|
	# isbn13_array_integer << item to_i
	# end
	sum = 0
	check_digit = 0
		isbn13_array.each_with_index do |value, index|
			break if index == 12
			if index % 2 == 0
				sum += value * 1
			else
				sum += value * 3
			end
		end
	sum = sum % 10
	check_digit = 10 - sum
		if check_digit == 10
			check_digit = 0
		end
	isbn13_array[12] == check_digit
end

def valid_ISBN_length?(book_num_10)

	if book_num_10.length == 10
		true
	else
		false
	end
end

def remove_spaces_and_dashes(isbn_number)
	#isbn_number.gsub(' ', '')
	isbn_number.delete(' ' '-')
end

def check_for_letters(letters) # change later
	
	if letters.chop.match(/[a-zA-Z]/)
		false
	else
		true
	end
end

def check_for_x(num)

	if num[-1].match(/[0-9xX]/)
		true
	else
		false
	end
end

def check_for_symbols(symbols) # change later
	if symbols.chop =~ /\D/
		false
	else
		true
	end
end

def valid_isbn?(isbn_string)
	# if valid isbn and replace '0' with illegal character, the character comes back as '0' (false positive)
	# takes in string, returns boolean
	isbn_string_no_spaces_no_dashes = remove_spaces_and_dashes(isbn_string)
		if check_for_symbols(isbn_string_no_spaces_no_dashes) && isbn_string_no_spaces_no_dashes.length == 10
			check_for_letters(isbn_string_no_spaces_no_dashes)
			# check_for_symbols(isbn_string_no_spaces_no_dashes)
			check_for_x(isbn_string_no_spaces_no_dashes)
			compare_check_digit(isbn_string_no_spaces_no_dashes)
		
		elsif
			# check_for_symbols(isbn_string_no_spaces_no_dashes) && 
			isbn_string_no_spaces_no_dashes.length == 13
			check_for_letters(isbn_string_no_spaces_no_dashes)
			valid13isbn?(isbn_string_no_spaces_no_dashes)
		else
			false
		end
end