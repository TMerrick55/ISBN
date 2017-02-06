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

def check_for_letters(letters)
	
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

# def remove_dashes(isbn_number)
	# isbn_number.gsub('-', '')
	# isbn_number.delete('-')
# end

def check_for_symbols(symbols)

	if symbols.chop =~ /\D/
		true
	else
		false
	end
end

