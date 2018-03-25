# in the book they assume that the delimiter is ', ' which seems super off????
# who creates a csv with that's not comma-delimited, but comma-space-delimited??? a cssv???

module ActsAsCsv
	def self.included(base) 
		base.extend ClassMethods
	end

	module ClassMethods 
		def acts_as_csv
		  include InstanceMethods
		end 
	end
	module InstanceMethods
		def read(filename)
			@csv_contents = []
			file = File.new(filename)
			@headers = file.gets.chomp.split(',')
	
			file.each do |row|
				@csv_contents << row.chomp.split(',')
			end 
		end

		attr_accessor :headers, :csv_contents

		def initialize(filename)
			read(filename)
		end 

		def each(&block)
			self.csv_contents.each do |row| block.call row end
		end		

	end
end

class RubyCsv # no inheritance! You can mix it in include ActsAsCsv
	include ActsAsCsv
	acts_as_csv
end

csv = RubyCsv.new('test.csv')
puts csv.headers.inspect
puts csv.csv_contents.inspect
csv.each do |row| p row end