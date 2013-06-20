require 'java'

module Core
  module Type

  	java_import 'org.apache.commons.math3.linear.BlockRealMatrix'
  	java_import 'org.apache.commons.math3.linear.Array2DRowRealMatrix'

  	Apache_matrix = Array2DRowRealMatrix
  	Apache_matrix_block = BlockRealMatrix

  	# NB: 'A' stands for Apache
		class Apache_matrix 

		end

		# More suited to dimensions above 50 or 100
		class Apache_matrix_block

		end

	end
end
