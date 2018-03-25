puts '# hello world'
puts 'hello world'

puts '# assignment'
language = 'Ruby'

puts '# string replacement'
puts "hello, #{language}"

puts '# objects'
puts 4.class

puts '# object methods'
puts 4.methods

puts '# conditionals'
x = 4
puts x < 5
puts x <= 4
puts x > 4

puts'# boolean objects'
puts false.class
puts true.class

puts '# conditional expressions, if/then statements'
puts 'This appears to be false' unless x == 4
puts 'This appears to be true' if x == 4
if x == 4
	puts 'This appears to be true'
end
unless x == 4
	puts 'this appears to be false'
else
	puts 'this appears to be true'
end
puts 'this appears to be true' if not true
puts 'this appears to be true' if !true

puts '# objects true but nil and false'
puts 'this appears to be true' if 1
puts 'this appears to be true' if false
puts 'this appears t obe true' if nil

puts '# while and until'
x = x + 1 while x < 10
puts x
x = x - 1 until x == 1
puts x
while x < 10
	x = x + 1
	puts x
end

