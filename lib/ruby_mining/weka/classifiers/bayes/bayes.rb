$:.unshift File.dirname(__FILE__)
require 'bayes_utils'

module Weka
	module Classifier
		module Bayes
			java_import "weka.classifiers.bayes.NaiveBayes"

			class NaiveBayes
				include Bayes_utils
				class Base < NaiveBayes
					def initialize
						super
						set_options(self.class.options)
						self.class.data.setClassIndex(self.class.class_index)
						puts self.class.class_index
						buildClassifier(self.class.data)
					end
				end
			end
		end
	end
end