require 'java'

module Weka
  module Filter
  	module Supervised
  		module Attribute
  			java_import "weka.core.Utils"
  			java_import "weka.filters.Filter"
   			java_import "weka.filters.supervised.attribute.AttributeSelection"
        java_import "weka.filters.supervised.attribute.Discretize"

   			class AttributeSelection
  				def list_options
  					listOptions.each {|key| puts "#{key.synopsis} #{key.description}"}
  				end
  				def set_options(options_string)
  					options = Utils.splitOptions(options_string)
  					setOptions(options)
  				end
  				def set_data(instances)
  					setInputFormat(instances)
  					@input = instances
  				end
  				def description
  					begin; puts globalInfo; rescue; NoMethodError; puts "Sorry, no description available for this filter"; end
  				end
  				def use
  					Filter.useFilter(@input,self)
  				end
   			end

        class Discretize  
          def list_options
            listOptions.each {|key| puts "#{key.synopsis} #{key.description}"}
          end
          def set_options(options_string)
            options = Utils.splitOptions(options_string)
            setOptions(options)
          end
          def set_data(instances)
            setInputFormat(instances)
            @input = instances
          end
          def description
            begin; puts globalInfo; rescue; NoMethodError; puts "Sorry, no description available for this filter"; end
          end
          def use
            Filter.useFilter(@input,self)
          end
        end
  			
  		end
  	end
  end
end