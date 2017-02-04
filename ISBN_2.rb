def valid_ISBN_length?(book_num_13)

	if book_num_13.length == 13
		true
	else
		false
	end
end

def remove_dashes(isbn_number)
	isbn_number.gsub('-', '')
	# isbn_number.delete('-')
end

def remove_spaces(isbn_number)
	# isbn_number.gsub(' ', '')
	isbn_number.delete(' ')
end

def check_for_letters(letters)

	if !!letters.match(/[a-z, A-Z]/)
		false
	else
		true
	end
end
