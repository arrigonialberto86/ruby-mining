module Bayes_utils
	java_import "weka.core.Utils"

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



