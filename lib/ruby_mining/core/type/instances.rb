# Extend each class (e.g. Instances) to add custom functionalities
require 'java'

module Core
  module Type
    java_import "weka.core.Instances"
    class Instances
      def mean(att) 
        sum = enumerateInstances.inject(0) do |s,x|
          s+=x.value(attribute(att))
        end
        return sum/(numInstances*1.0)
      end
    end  

  end
end
