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
					end
				end
			end
		end
	end
end