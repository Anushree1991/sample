require 'test/unit'
require './digit_match'

class TestDigitMatch < Test::Unit::TestCase
	def test_display_match
		assert_equal([2, 12, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 32, 42, 52, 62, 72, 82, 92], DigitMatch.display_match(2))
	end

	def test_display_2digit_match
		assert_equal([11], DigitMatch.display_match(11))
	end
end