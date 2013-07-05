#This module is used by the Bayesian classifiers to inherit the needed methods (instance and class methods)
module Bayes_utils
	java_import "weka.core.Utils"

	#Instance methods list
  def self.included(base)
      base.extend(ClassMethods)
  end

  def set_options(options)
  	options_inst = Utils.splitOptions(options)
		setOptions(options_inst)
  end

	def list_options
		listOptions.each {|key| puts "#{key.synopsis} #{key.description}"}
	end

	def description
    puts globalInfo
	end

	#Class methods list
	module ClassMethods

		def set_options(options_string)
			@options_string = options_string
		end

		def options
    	@options_string
    end

	  def set_data(data_instance)
			@data = data_instance	  	
	  end

	  def data
	  	@data
	  end  

	  def set_class_index(class_index)
	  	@class_index = class_index
	  end

	  def class_index
	  	@class_index
	  end
	end
end



