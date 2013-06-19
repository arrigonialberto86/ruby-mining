require 'java'

module Core
  module Type

  	java_import 'org.apache.commons.math3.linear.BlockRealMatrix'
  	java_import 'org.apache.commons.math3.linear.Array2DRowRealMatrix'

  	A_matrix = Array2DRowRealMatrix
  	A_matrix_block = BlockRealMatrix

  	# NB: 'A' stands for Apache
		class A_matrix 

		end

		# More suited to dimensions above 50 or 100
		class A_matrix_block

		end

	end
end
