class FibonacciSeries
 def FibonacciSeries.generate_series(series_until = nil)
  unless series_until
    puts 'Please enter a number'
    series_until = gets.to_i 
  end
  series = [0, 1]
  last_number = series.last
  while true
    last_number = series[-1] + series[-2]
    break if last_number > series_until
    series << last_number
  end
  puts series.join("\n")
  return series
 end
end