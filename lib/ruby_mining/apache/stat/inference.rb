require 'java'

module Apache
  module Stat
  	module Inference

  		java_import 'org.apache.commons.math3.stat.inference.ChiSquareTest'
  		java_import 'org.apache.commons.math3.stat.inference.MannWhitneyUTest'
  		java_import 'org.apache.commons.math3.stat.inference.OneWayAnova'
  		java_import 'org.apache.commons.math3.stat.inference.TTest'
  		java_import 'org.apache.commons.math3.stat.inference.WilcoxonSignedRankTest'
  		java_import 'org.apache.commons.math3.stat.StatUtils'
  		
  		def wilcoxon(array_1,array_2)
  			obj = WilcoxonSignedRankTest.new
  			p_value = obj.wilcoxonSignedRank Core::Utils::double_to_a(array_1), Core::Utils::double_to_a(array_2) 
  			return p_value
  		end

  		T_test = TTest 
  		class T_test
  		end

  	end
  end
end