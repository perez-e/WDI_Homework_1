puts "Enter a string: "
my_array = gets.chomp.split("")
# reverse_string = []

# for x in my_array
# 	reverse_string.unshift x
# end

# puts reverse_string.join("")

# this is the most efficient way of reversing a string
length = my_array.length
counter = 0
while counter < length/2
	temp = my_array[counter]
	my_array[counter] = my_array[length - (1+counter)]
	my_array[length - (1+counter)] = temp
	counter += 1
end

puts my_array.join("")