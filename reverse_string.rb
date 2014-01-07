puts "Enter a string: "
my_string = gets.chomp

length = my_string.length
counter = 0
while counter < length/2
	temp = my_string[counter]
	my_string[counter] = my_string[length - (1+counter)]
	my_string[length - (1+counter)] = temp
	counter += 1
end

puts my_string