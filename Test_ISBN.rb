require 'minitest/autorun'
require_relative 'ISBN.rb'

class Books_ISBN < Minitest::Test

	def test_1_equal_1
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
		book_num_10 = '402 378 91 3'
		assert_equal('402378913', remove_spaces(book_num_10))
	end

	def test_removing_spaces
		book_num_10 = '123 456 9845'
		assert_equal('1234569845', remove_spaces(book_num_10))
	end

	def test_check_for_letters
		book_num_10 = '456s789447'
		assert_equal(false, check_for_letters(book_num_10))
	end

	def test_true_if_X_at_end
		book_num_10 = 'x43798025x'
		assert_equal(true, check_for_x(book_num_10))
	end
end