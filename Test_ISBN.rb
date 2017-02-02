require 'minitest/autorun'
require_relative 'ISBN.rb'

class Books_ISBN < Minitest::Test

	def test_1_equal_1
		assert_equal(1,1)
	end

	def test_num_is_10_true
		book_num_10 - '9182736450'
		assert_equal(true, book_num_10)
	end
end