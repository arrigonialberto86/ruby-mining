# Extend each class (e.g. Instances) to add custom functionalities
require 'java'

module Core
  module Type
    
    java_import "weka.core.Instances"
    java_import 'java.io.File'
    java_import 'weka.core.converters.CSVSaver'
    java_import 'weka.core.converters.ArffSaver'
    java_import "weka.core.FastVector"

    class Instances
      
      def mean(att) 
        sum = enumerateInstances.inject(0) do |s,x|
          s+=x.value(attribute(att))
        end
        return sum/(numInstances*1.0)
      end

      def to_CSV(out_file)
        saver = CSVSaver.new
        saver.setInstances(self)
        out_file = File.new out_file
        saver.setFile(out_file);
        saver.writeBatch();
      end

      def to_ARFF(out_file)
        saver = ArffSaver.new
        saver.setInstances(self)
        out_file = File.new out_file
        saver.setFile(out_file);
        saver.writeBatch();
      end
    end

    def Type.create_instances(name,attributes)
      attributes_vector = FastVector.new
      attributes.each {|value| attributes_vector.addElement(value)}
      return Instances.new(name,attributes_vector,0)
    end
  end
end



