# selfstudy
#• Find out how to access files with and without code blocks. What is the benefit of the code block?
#• How would you translate a hash to an array? Can you translate arrays to hashes?
#• Can you iterate through a hash?
#• You can use Ruby arrays as stacks. What other common data structures do arrays support?

# challenges
#1) Print the contents of an array of sixteen numbers, four numbers at a time, using just each. Now, do the same with each_slice in Enumerable.
(1..16).each_slice(4) {|_| p _.join(',')}

#2) The Tree class was interesting, but it did not allow you to specify a new tree with a clean user interface. Let the initializer accept a nested structure with hashes and arrays. You should be able to specify a tree like this: {'grandpa' => { 'dad' => {'child 1' => {}, 'child 2' => {} }, 'uncle' => {'child 3' => {}, 'child 4' => {} } } }.

class Tree
	attr_accessor :children, :node_name
	
	def initialize(tree = {})
		@node_name = tree.keys[0]
		@children = tree[@node_name].collect do |k,v| 
				Tree.new({k => v})
			end
	end
	
	def visit_all(&block)
	  visit &block
	  children.each {|c| c.visit_all &block}
	end
	
	def visit(&block)
	  block.call self
	end
end

#3) Write a simple grep that will print the lines of a file having any occurrences of a phrase anywhere in that line. You will need to do a simple regular expression match and read lines from a file. (This is surprisingly simple in Ruby.) If you want, include line numbers.

IO.readlines(ARGV[1]).each_with_index{ |line, index| puts "#{index + 1}: #{line}" if line =~ /#{ARGV[0]}/}



