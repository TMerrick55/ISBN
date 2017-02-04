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
end