class FibonacciSeries
 def FibonacciSeries.generate_series
  puts 'Please enter a number'
  series_until = gets.to_i
  series = [0, 1]
  last_number = series.last
  while true
    last_number = series[-1] + series[-2]
    break if last_number > series_until
    series << last_number
  end
  puts series.join("\n")
 end
end