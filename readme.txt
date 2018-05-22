The application consists of two directory
1. app
2. spec

In the app directory there are 5 files
1. dict.txt 	=> This is a dictionary file
2. grid.rb  	=> This file contains logic for creating a grid
3. word.rb  	=> This file creates the word from the characters present at the 
							 columns(grid part)
4. search.rb 	=> This file search the word in the dict.txt
								(It reads the file and uses binary search for word searching)
5. main.rb    => You can execute the application using this file
								 (Just go to the terminal and type ruby main.rb)

In the spec directory there is one app directory and spec_helper
	1. app directory contains two files
		i)  rspec test for the grid
		ii) rspec test for the word
	2. spec_helper - Auto generated file when initializing rspec in the application

The code support less coupling and high cohesion
