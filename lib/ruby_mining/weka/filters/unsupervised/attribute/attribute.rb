require 'java'

module Weka
  module Filter
  	module Unsupervised
  		module Attribute

  			java_import "weka.filters.unsupervised.attribute.Add"
  			java_import "weka.filters.unsupervised.attribute.Center"
  			java_import "weka.filters.unsupervised.attribute.Discretize"
  			java_import "weka.filters.unsupervised.attribute.NominalToString"
  			java_import "weka.filters.unsupervised.attribute.Normalize"
  			java_import "weka.filters.unsupervised.attribute.Remove"
  			java_import "weka.filters.unsupervised.attribute.Standardize"
  			java_import "weka.filters.unsupervised.attribute.PrincipalComponents"
  			java_import "weka.core.Utils"
  			java_import "weka.filters.Filter"

  			class Add
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

  			class Center
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

  			class NominalToString
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

  			class PrincipalComponents
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

  			class Remove
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

  			class Standardize
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
