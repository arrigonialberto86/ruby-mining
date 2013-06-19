require 'java'

module Core
 	module Utils

		# Convert a bidimensional RubyArray to a java double [][]
		def Utils.bidimensional_to_double(ruby_array)
			ruby_array.to_java Java::double[]
		end
  end
end