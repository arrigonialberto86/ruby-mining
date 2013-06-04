# Extend each class (e.g. Instances) to add custom functionalities
require 'jbundler'
require 'java'
java_import "weka.core.Instances"

module Core
  module Type

    class Instances
      def mean
        sum = enumerateInstances.inject(0) do |s,x|
          s+=x.value(attribute(att))
        end
        return sum/(numInstances*1.0)
      end
    end  

  end
end