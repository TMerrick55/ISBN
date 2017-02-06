require 'minitest/autorun'
require_relative 'ISBN.rb' 
require_relative '2_ISBN_10_multiply_&_add.rb'

class Books_ISBN < Minitest::Test

	def test_1_equals_1
		assert_equal(1,1)
	end

	def test_num_10_is_true
		book_num_10 = '9182736450'
		assert_equal(true, valid_ISBN_length?(book_num_10))
	end

	def test_num_10_is_false
		book_num_10 = '290834905'
		assert_equal(false, valid_ISBN_length?(book_num_10))
	end

	def test_num_is_false_dash
		book_num_10 = '4-023-78913-2'
		assert_equal('4023789132', remove_spaces_and_dashes(book_num_10))
	end

	def test_removing_spaces
		book_num_10 = '1 234 56984 5'
		assert_equal('1234569845', remove_spaces_and_dashes(book_num_10))
	end

	def test_check_for_letters
		book_num_10 = '456s789447'
		assert_equal(false, check_for_letters(book_num_10))
	end

	def test_true_if_x_at_end
		book_num_10 = '243798025x'
		assert_equal(true, check_for_x(book_num_10))
	end

	def test_for_symbols
		book_num_10 = '1238456&90'
		assert_equal(true, check_for_symbols(book_num_10))
	end

	def test_for_symbols_false
		book_num_10 = '1234098765'
		assert_equal(false, check_for_symbols(book_num_10))
	end
end

class TestMultiply < Minitest::Test

	def test_multiply_function_by_position
		results = multiply('123456789')
		assert_equal([1, 4, 9, 16, 25, 36, 49, 64, 81], results)
	end

	def test_sum_of_isbn
		results = sum([1, 2, 3, 4, 5, 6, 7, 8, 9])
		assert_equal(45, results)
	end

	def test_return_whats_left
	results = remainder(11)
	assert_equal(0, results)
	end

	def test_modulus_11
		results = remainder(232)
		assert_equal(1, results)
	end

	def test_remainder_equals_check_digit_true
		results = compare_check_digit('877195869x')
		assert_equal(true, results)
	end

	def test_remainder_results_equal_to_last_digit
		results = compare_check_digit('877195869X')
		assert_equal(true, results)
	end

	def test_remainder_false
		results = compare_check_digit('244590789')
		assert_equal(false, results)
	end

	def test_invalid_character
		results = compare_check_digit('123&456987')
		assert_equal(false, results)
	end

	def test_if_remainder_equals_checkdigit_false
		results = compare_check_digit('755#246x')
		assert_equal(false, results)
	end

	def test_valid_isbn_main_function
		results = valid_isbn?('0132971291')
		assert_equal(true, results)
	end
end
