require 'minitest/autorun'
require_relative 'ISBN_2.rb'

class Books_ISBN < Minitest::Test

	def test_1_equals_1
		assert_equal(1,1)
	end

	def test_num_13_is_true
		book_num_13 = '2910473856209'
		assert_equal(true, valid_ISBN_length?(book_num_13))
	end

	def test_num_13_is_false
		book_num_13 = '902658374019'
		assert_equal(false, valid_ISBN_length?(book_num_13))
	end

	def test_num_is_false_dash
		book_num_13 = '920-1-47-574860-4'
		assert_equal('9201475748604', remove_dashes(book_num_13))
	end

	def test_removing_spaces
		book_num_13 = '230 7 35 465971 2'
		assert_equal('2307354659712', remove_spaces(book_num_13))
	end

	def test_check_for_letters
		book_num_13 = '2019e56246840'
		assert_equal(false, check_for_letters(book_num_13))
	end

	def test_true_if_x_at_end
		book_num_13 = '294086723104x'
		assert_equal(true, check_for_x(book_num_13))
	end
end