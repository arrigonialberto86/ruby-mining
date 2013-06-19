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

      # Convert an Instances object to a bidimensional Ruby array
      # where each row corresponds to an Instance object
      def to_a
        matrix = Array.new
        att = Array.new
        self.enumerateAttributes.each_with_index do |a,idx|
          if a.isNumeric  
            enumerate_instances.each {|s| att << s.value(s.attribute(idx))}
            matrix << att
            att = Array.new
          else
            enumerateInstances.each do |inst|
              att << inst.string_value(idx)
            end
            matrix << att
            att = Array.new
          end
        end
        return matrix.transpose
      end

      def check_numeric_instance
        enumerateAttributes.each do |att|
          unless att.isNumeric
            raise ArgumentError, "Sorry, attribute '#{att.name}' is not numeric!"
          end
        end
      end

      def to_A_matrix
        check_numeric_instance
        ruby_array = to_a
        java_double_array = Core::Utils::bidimensional_to_double(ruby_array)
        return Core::Type::A_matrix.new(java_double_array)
      end

      def to_A_matrix_block
        check_numeric_instance
        ruby_array = to_a
        java_double_array = Core::Utils::bidimensional_to_double(ruby_array)
        return Core::Type::A_matrix_block.new(java_double_array)
      end

      def return_attr_data(att)
        attr_values = Array.new
        if attribute(att).isNumeric
          enumerateInstances.each do |i|
            attr_values << i.value(attribute(att))
          end
        else
          attr_index = attribute(att).index
          enumerateInstances.each do |inst|
            attr_values << inst.string_value(attr_index)
          end
        end
        return attr_values
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
          puts 'ERROR: Attribute type is unknown!'
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



