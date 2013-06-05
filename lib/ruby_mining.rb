#require "jbundler"
require File.join(File.dirname(__FILE__),'..','.jbundler','classpath.rb')
require "java"
java_import "weka.clusterers.SimpleKMeans"
java_import "org.apache.commons.math.random.RandomDataImpl"

module Apache_test
  def Apache_test.print_test 
    randomData = RandomDataImpl.new 
    10.times do
      puts randomData.nextLong(1, 1000000)
    end
  end
end

require "ruby_mining/core"
require "ruby_mining/weka"
require "ruby_mining/apache"

