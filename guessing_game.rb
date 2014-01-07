magic_number = rand(1..100)
print "Guess a number between 1 and 100:                > "
guess = gets.to_i
attempts = 1
while guess != magic_number
	if magic_number < guess
		print "The number is lower than #{guess}.   Guess again:      > "
	elsif magic_number > guess
		print "The number is greater than #{guess}. Guess again:      > "
	end
	guess = gets.to_i
	attempts += 1
end
puts "Hooray you guessed correctly in #{attempts} tries!!! #{magic_number} is right!"