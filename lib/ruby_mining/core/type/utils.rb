require 'java'

module Core
 	module Utils

		# Convert a bidimensional RubyArray to a java double [][]
		def Utils.bidimensional_to_double(ruby_array)
			ruby_array.to_java Java::double[]
		end

		def Utils.double_to_a(java_array)
			ruby_array = []
			java_array.each {|val| ruby_array << val}
			ruby_array
		end
  end
end