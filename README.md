1. Introduction
You only need to download the project, install dependencies and set chrome browser to start working with it.

This framework was build following the Page Object Model design pattern and it uses BDD (Gherkin with Cucumber in this case) as a language for a better understanding of test cases.

Requirements you need in your computer:

Admin rights on your computer to download and install apps

RubyMine

Ruby gems:

Rspec

Rake

Cucumber

Airborne

2. Setup Framework

	2.1. Clone this project to your computer

	2.2 Install Ruby if needed
	Windows: Go to https://rubyinstaller.org/ , donwload Ruby installer version 3.0.1-1, install.
	Mac: Go to https://github.com/rbenv/rbenv#readme and follow the installation and setup steps.

	2.3 Install bundler if needed
	In a terminal go to project directory
	run:  gem install bundler

	2.4 Install RubyMine to compile:
	Download from this page and configure a trial license: 
   	https://www.jetbrains.com/ruby/promo/?gclid=CjwKCAjwg4-EBhBwEiwAzYAlsl-V9QIyL5-yOUTuPNzaNIJIyVoj0tfzDpkBwbSh-PPE3qY4OYsXvRoCaZoQAvD_BwE

	2.5 Install dependecies
	run: bundle install
	run: bundle update --bundler

	2.6 Install Chormedriver
	Windows: install chocolatey if needed. run: choco install chromedriver
	Mac: install homebrew if needed. run: brew install --cask chromedriver

3. Executing the framework

	3.1 Right click on "searching_word_duck.feature" features folder then run or click the Run all specs button in order to run all the test suite
	Wait for test execution to finish.
	You can see the test results displayed on the terminal

	3.2 To run API, go to a terminal inside the project an execute the following command
	rspec .\features\jsonPlaceHolder_api_test.rb

4. Framework Architecture
	4.1 Folder Structure
	Here is all the info related to the application is found, like features, pages and step definitions.

Top - Level Directory Layout

	.
	├── cucumber_examples-master    

	|	├── features          

	|		├── step_definitions  

	|		├── support           

	|		├── feature files and API tests

	|	├── .gitignore                                 

	|	├── cucumber.yml

	|	├── Gemfile

	|	├── Gemfile.lock 

	|	├── Rakefile

	|	└── README.md

Cucumber Directory

5.Results
After the test run the framework will generate the reports in CLI using the pretty format
