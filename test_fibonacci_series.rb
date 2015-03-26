require 'test/unit'
require './fibonacci_series'

class TestFibonacciSeries < Test::Unit::TestCase
  def test_generate_series
    assert_equal([0, 1, 1, 2, 3, 5, 8, 13], FibonacciSeries.generate_series(14))
  end
end