require 'java'

module Core
  module Type
    
    java_import "weka.core.Attribute"
    java_import "weka.core.FastVector"

    class Attribute

    end

    def self.create_numeric_attr(name_of_attr)
    	numeric = Attribute.new name_of_attr
    	return numeric
    end

    def self.create_date_attr(name_of_attr,format)
    	date = Attribute.new(name_of_attr,format)
    	return date
    end

    def self.create_nominal_attr(name_of_attr,values_list)
    	labels = FastVector.new
    	values_list.each {|value| labels.addElement(value)}
    	nominal = Attribute.new(name_of_attr,labels)  
    	return nominal
    end

    def self.create_string_attr(name_of_attr)
    	string = Attribute.new(name_of_attr,nil)
    	return string
    end
  end

end    


