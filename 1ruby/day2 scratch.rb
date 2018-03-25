# functions
def tell_the_truth
	true
end

# arrays
animals = ['lions', 'tigers', 'bears']

# implicit type-mixed arrays
qanim = ['lions', 'tigers', 1]

# ranges
puts (0..10)

# implicit multidimensionality of arrays
animals[2] = ['pandas', 'polar bears']
puts animals.inspect

# manipulation of elements via push/pop
a = [1]
a.push(1)
puts a
a.push(2)
puts a
a.pop
puts a
a.pop
puts a

# hashes
numbers = {1 => 'one', 2 => 'two'}
stuff = {:array => [1,2,3], :string, 'Hi, mom!'}
puts stuff[:string]

# mutability of objects
puts 'string'.object_id
puts 'string'.object_id
puts 'string'.object_id

# code blocks
3.times {puts 'hiya there, kiddo'}
animals = ['lions and ', 'tigers and', 'bears', 'oh my']
animalseach {|a| puts a}

# yield, plus an override
class Fixnum
	def my_times
		i = self
		while i > 0
			i = i - 1
			yield
		end
	end
end

3.my_times {puts 'mangy moos'}

# blocks as first-class objects and parameters
def call_block(&block)
	block.call_block
end
def pass_block(&block)
	call_block(&block)
end
pass_block {puts 'Hello, block'}

# example uses of blocks

# modules

# splat and double splat

# single splat is used to wrap items into an Array
# as well as in pattern matches for capturing elements from a collection

[1,2,[3,4], {5 => 6}].each do |*_| p _ end
#=> [1]
#=> [2]
#=> [[3, 4]]
#=> [{5=>6}]

# double splat is used to wrap key/value pairs into a Hash
def foo(a, *b, **c)
	[a,b,c]
end
foo 10
#=> [10, [], {}]
foo 10, 20, 30
#=> [10, [20, 30], {}]
foo 10, 20, 30, d: 40, e: 50
#=> [10, [20, 30], {:d=>40, :e=>50}]
foo 10, d: 40, e: 50
#=> [10, [], {:d=>40, :e=>50}]
#** be careful to not just do foo(*bar, **baz), that will roll up everything into a single array

def foo(*bar, **baz)
	p bar
	p baz
end
foo([1,2], {3=> 4, 5 => 6})
#=> [[1, 2], {3=>4, 5=>6}]