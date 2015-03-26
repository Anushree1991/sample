class MergeSort
	$elements = Array.new
	def sorting_elements
		puts "Enter size of array"
		size = gets.to_i		
		puts "Enter array elements"
		i = 0
		size.times do
			$elements[i] = gets.to_i
			i += 1
		end	
		merge_sort(0, size-1)
		puts "sorted array"
		$elements.each { |ele| puts ele }
	end

	def merge_sort(low, high)
		if low < high
			mid = ( low + high )/2
			merge_sort(low, mid)
			merge_sort(mid+1, high)
			merge(low, mid, high)
		end
	end


	def merge(low, mid, high)
		k = i = low
		j = mid + 1
		while i<=mid && j<=high
			if $element[i] < $element[j]
				c[k+=1] = $element[k+=1]
			else
				c[k+=1] = $element[j+=1]
			end
		end
		while i<=mid
			c[k+=1] = $element[i+=1]
		end
		while i<=mid
			c[k+=1] = $element[j+=1]
		end
		idx = low
		k.times do
			$element[idx] = c[idx]
			idx += 1
		end
	end
end


