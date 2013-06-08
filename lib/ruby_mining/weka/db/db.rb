require 'java'

module Weka
	module Db
		java_import 'weka.core.Instances'
		java_import 'weka.core.converters.DatabaseLoader'

		def Db.query_mysql(db_url,user,psw,query)
			open([[Dir.home],["DatabaseUtils.props"]].join("/"),'w') do |out|
				open(File.join(File.dirname(File.expand_path(__FILE__)), 'DatabaseUtils_mysql'),'r') do |f|
					f.each_line do |line|
						out.write line
					end
				end
			end
		  loader = DatabaseLoader.new
			loader.setSource(db_url,user,psw)
			loader.setQuery(query)
			data = loader.getDataSet
			return data
		end

		def Db.query_postgresql(db_url,user,psw,query)
			open([[Dir.home],["DatabaseUtils.props"]].join("/"),'w') do |out|
				open(File.join(File.dirname(File.expand_path(__FILE__)), 'DatabaseUtils_postgresql'),'r') do |f|
					f.each_line do |line|
						out.write line
					end
				end
			end
		  loader = DatabaseLoader.new
			loader.setSource(db_url,user,psw)
			loader.setQuery(query)
			data = loader.getDataSet
			return data
		end

	end
end