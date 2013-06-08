# Extend each class (e.g. Instances) to add custom functionalities
require 'java'

module Core
  module Type
    
    java_import "weka.core.Instances"
    java_import 'java.io.File'
    java_import 'weka.core.converters.CSVSaver'
    java_import 'weka.core.converters.ArffSaver'

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

  end
end
