#1) Print the string “Hello, world.”
puts "Hello, world."

#2) For the string “Hello, Ruby,” find the index of the word “Ruby.”
i = 0
i = i + 1 until "Hello, Ruby"[i , i + "Ruby".length] === "Ruby"
puts i

#3) Print your name ten times.
i = 0
while i <= 10
	puts "arjd"
	i += 1
end

#4) Print the string “This is sentence number 1,” where the number 1 changes from 1 to 10.
i = 0
until i == 10
	puts "This is sentence number #{i + 1}"
	i += 1
end

#5) Run a Ruby program from a file.
# $>ruby day1 selfstudy.rb

#6) Bonus problem: If you’re feeling the need for a little more, write a program that picks a random number. Let a player guess the number, telling the player whether the guess is too low or too high.
#(Hint: rand(10) will generate a random number from 0 to 9, and gets will read a string from the keyboard that you can translate to an integer.)

set = true
while true
	if set
		r = rand(10)
		set = false
	end

	puts 'guess a number from 0 to 9'
	guess = gets.to_i

	if guess == r
		puts 'you got it'
		break
	elsif guess < r
		puts 'too low'
	elsif guess > r
		puts 'too high'
	end
end