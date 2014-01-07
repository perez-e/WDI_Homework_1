puts "Please enter a phrase to be framed"
phrase = gets.chomp.split

max_word_length = phrase.map {|word| word.length}.max

puts "*"*(max_word_length+6) # top frame
space = max_word_length+3 # space inside minus 1 space character
					

phrase.each {|word| puts "* #{word}" << " "*(space-word.length) << "*" }

puts "*"*(max_word_length+6)

space = max_word_length+4
puts "*"*(max_word_length+6)
if max_word_length.odd?
	phrase.each do |word| 
		if word.length.odd?
			puts "*" << " "*((space-word.length)/2) << word << " "*((space-word.length)/2) << "*" 
		else
			puts "*" << " "*((space-word.length)/2) << word << " "*((space-word.length)/2) << " *" 
		end
	end
else
	phrase.each do |word| 
		if word.length.even?
			puts "*" << " "*((space-word.length)/2) << word << " "*((space-word.length)/2) << "*" 
		else
			puts "*" << " "*((space-word.length)/2) << word << " "*((space-word.length)/2) << " *" 
		end
	end
end
puts "*"*(max_word_length+6)



