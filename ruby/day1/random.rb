puts 'Guess The Number Game (1-10)...'
number = rand(10)
guessed = false
until guessed == true
	puts 'What\'s your guess ?'
	guessedNum = gets
	if (guessedNum.to_i == number)
		guessed = true
		puts 'Correct !'
	else
		puts 'Sorry, try again.'
	end
end
	

