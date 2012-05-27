# print 16 elements in 4 element rows

array = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16]

def print_in_fours( array )
	array_of_four = []
	puts 'Four array elements per row:'
	array.each do |x|
		array_of_four.push x
		if array_of_four.length == 4
			print_with_space array_of_four
			array_of_four.clear
		end
	end
end

def print_with_space(array)
	array.each do |x|
		print "#{x} "
	end
	puts
end
print_in_fours array
