class DigitMatch
	def DigitMatch.display_match(check_digit = nil)
		unless check_digit
			puts 'Please enter a digit'
			check_digit = gets.to_i
		end
		digits_range = 1..100
		digits_range.each do |digit|
			if /#{check_digit}/.match(digit.to_s) then				
				puts digit				
			end			
		end
	end
end