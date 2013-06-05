require 'java'

module Core
  module Parser
  	# Parse an ARFF file and create an Instances object
  	def Parser.parse_ARFF(file) 
      java_import 'java.io.FileReader'
      file_in = FileReader.new file
      data_instance = Core::Type::Instances.new file_in
      return data_instance
  	end
  end
end