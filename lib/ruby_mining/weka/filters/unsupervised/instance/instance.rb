require 'java'

module Weka
  module Filter
  	module Unsupervised
  		module Instance
  			java_import "weka.core.Utils"
  			java_import "weka.filters.Filter"
  			java_import "weka.filters.unsupervised.instance.Normalize"
  			java_import "weka.filters.unsupervised.instance.NonSparseToSparse"
  			java_import "weka.filters.unsupervised.instance.SparseToNonSparse"
  			java_import "weka.filters.unsupervised.instance.RemoveRange"
  			java_import "weka.filters.unsupervised.instance.SubsetByExpression"
        java_import "weka.filters.unsupervised.instance.RemoveWithValues"

  			class Normalize
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

  			class NonSparseToSparse
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

  			class RemoveRange
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

        class RemoveWithValues
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

  			class SparseToNonSparse
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

  			class SubsetByExpression
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
            begin; puts globalInfo.split("\n").each {|line| puts line}; rescue; NoMethodError; puts "Sorry, no description available for this filter"; end
  				end
  				def use
  					Filter.useFilter(@input,self)
  				end
  			end

  		end
  	end
  end
end