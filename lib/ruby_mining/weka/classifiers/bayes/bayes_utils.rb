module Bayes_utils
	java_import "weka.core.Utils"

  def self.included(base)
      base.extend(ClassMethods)
  end

  def set_options(options)
  	options_inst = Utils.splitOptions(options)
		setOptions(options_inst)
#		puts 'Options are set!'
  end

	def list_options
		listOptions.each {|key| puts "#{key.synopsis} #{key.description}"}
	end

	module ClassMethods
		@options_string = ''

		def set_options(options_string)
			@options_string = options_string
		end

		def options
      @options_string
    end
	end
end