class Palindrome
	def Palindrome.check_number(number = nil)
		until number
			puts "Enter a number"
			number = gets.to_i
		end
		temp = number
		result = 0
		while temp != 0			
			remainder = temp % 10
			result = ( result * 10 ) + remainder
			temp = temp / 10
		end
		if result == number
			puts String(number)+" is palindrome"
		else
			puts String(number)+" is not a palindrome"
		end
	end
end