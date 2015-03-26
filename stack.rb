class Stack
	def Stack.stack_operation
		stack_array = Array.new
		top = -1
		puts "Enter size of the stack"
		size = gets.to_i
		while true				
			puts "Stack operation"
			puts "1. push"
			puts "2. pop"
			puts "3. display"
			puts "4. default"
			puts "0. exit"		
			puts "Enter choice"
			choice = gets.to_i
			case choice
			when 1
				if top == size-1
					puts "stack overflow"
				else
					puts "enter element to be pushed"
					element = gets.to_i
					top += 1
					stack_array[top] = element
					puts "Element is successfully inserted"
				end				
			when 2
				if top == -1
					puts "stack underflow"
				else
					puts "poped element is #{stack_array[top]}"
					top = top - 1
				end				
			when 3
				if top == -1
					puts "stack empty"
				else
					puts "array elements are"
					stack_array.each do |sa|
						puts sa
					end
				end				
			when 0
				exit
			else
				puts "invalid option"				
			end
		end
	end
end