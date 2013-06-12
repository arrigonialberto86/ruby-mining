# Extend each class (e.g. Instances) to add custom functionalities
require 'java'

module Core
  module Type
    
    java_import "weka.core.Instances"
    java_import 'java.io.File'
    java_import 'weka.core.converters.CSVSaver'
    java_import 'weka.core.converters.ArffSaver'
    java_import "weka.core.FastVector"
    java_import "weka.core.Instance"

    class Instances

      def ReturnAttrData(att)
        attr_values = []
            enumerateInstances.each do |i|
          attr_values << i.value(attribute(att))
        end
        attr_values
      end
      
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

      # should check that the array is bidimensional and the lengths are equal
      def check_array(data)
        return true
      end

      # data is inserted 'by row', i.e. one Instance object is inserted at the time
      def populate_by_row(data)
        unless check_array(data) == false
          data.each do |row|
            insert_instance(row)
          end
        end
      end

      def insert_instance(instance)
        data_ref=Array.new
        instance.each_with_index do |attribute,idx|
          data_ref << insert_attribute(attribute,idx)
        end
        double_array = data_ref.to_java :double
        single_row = Instance.new(1.0, double_array)
        self.add(single_row)
      end

      def insert_attribute(attribute_value,position)
        att=attribute_value
        if self.attribute(position).isNumeric
          return attribute_value
        elsif self.attribute(position).isNominal
          idx = self.attribute(position).indexOfValue(attribute_value)
          return idx
        elsif self.attribute(position).isDate
          date = self.attribute(position).ParseDate(attribute_value)
          return date
        else
          puts 'Attribute type is unknown!'
        end
      end
    end #Instances class

    def Type.create_instances(name,attributes)
      attributes_vector = FastVector.new
      attributes.each {|value| attributes_vector.addElement(value)}
      return Instances.new(name,attributes_vector,0)
    end
  end
end



