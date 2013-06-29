module Classifier_utils
	java_import "weka.classifiers.bayes.NaiveBayes"
	java_import "weka.core.Utils"

  def self.included(base)
      base.extend(ClassMethods)
  end

  def set_instance_options(options)
  	options_inst = Utils.splitOptions(options)
		setOptions(options_inst)
		puts 'Options are set!'
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

module Weka
	module Classifier
		module Bayes
			java_import "weka.classifiers.bayes.NaiveBayes"
  		java_import "weka.core.Utils"

			class NaiveBayes
				include Classifier_utils
				def initialize
					super
					set_instance_options(self.class.options)
				end
			end
		end
	end
end