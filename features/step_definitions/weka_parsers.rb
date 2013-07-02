Given /^the CSV file "(.*?)"$/ do |csv_file|
	@csv = File.join('resources',csv_file)
	@dataset_CSV = Core::Parser::parse_CSV(@csv)
end

Then /^I want to print to stdout the summary for the CSV parsed Instances object$/ do
	@dataset_CSV.summary
end

Given /^the ARFF file "(.*?)"$/ do |arff_file|
	@arff = File.join('resources',arff_file)
	puts @arff
	@dataset_ARFF = Core::Parser::parse_ARFF(@arff)
end

Then /^I want to print to stdout the summary for the ARFF parsed Instances object$/ do
	@dataset_ARFF.summary
end

Given(/^the database "(.*?)"$/) do |arg1|
  @db_connection = arg1
end

Given(/^a table named "(.*?)"$/) do |arg1|
	@target_table = arg1
end

Then(/^I want to extract data from that table$/) do
  @dataset = Weka::Db.query_mysql(@db_connection,'root','',"select * from #{@target_table}")
end

Then(/^I want to print to stdout the summary for the parsed Instances object$/) do
	@dataset.summary
end

Then(/^I want to convert and print the data into a bidimensional Ruby Array$/) do 
	puts @dataset.to_a2d
end



