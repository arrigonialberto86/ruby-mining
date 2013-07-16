Feature: Weka dataset clustering 
	In order to group similar data vectors in my dataset 
	I want to use Weka clustering algorithms

	Scenario: use of Kmeans algorithm
		Given the ARFF file "weather.numeric.arff"
    Given the SimpleKMeans algorithm implementation from Weka  
		Then I want to parse the data from the file
    


