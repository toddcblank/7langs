answer = rand(100)
puts("Enter a Guess")

guess = gets().to_i
while(guess != answer)
	if(guess > answer)
		puts("Too high!")
	else
		puts("Too Low!")
	end
	puts("Enter a guess:")
	guess = gets().to_i
end

puts("Correct!")
