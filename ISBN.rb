def valid_ISBN_length?(book_num_10)

	if book_num_10.length == 10
		true
	else
		false
	end
end

def remove_spaces(isbn_number)
	# isbn_number.gsub(' ', '')
	isbn_number.delete(' ')
end