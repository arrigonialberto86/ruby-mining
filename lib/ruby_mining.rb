start = File.absolute_path '.'
Dir.chdir(File.join(File.dirname(__FILE__),".."))
require 'jbundler'
Dir.chdir start
require File.join(File.dirname(__FILE__),'..','.jbundler','classpath.rb')
require "java"
require "ruby_mining/core"
require "ruby_mining/weka"
require "ruby_mining/apache"

