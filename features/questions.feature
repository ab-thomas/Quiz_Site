
Feature: Questions 

	Background:
		Given There are two questions

	Scenario: Check only one question is displayed
		Given I am displaying a question
		Then I should see "This is a question"
		And I should not see "This is another question"

	Scenario: Check questions have true and false fields
		Given I am displaying a question
		Then I should see True and False

	Scenario: Check I have given a correct answer
		Given I am displaying a question
		Then I answer it correctly
		Then I should see a correct message
		And I should see a next button	

	Scenario: Check I have given an incorrect answer
		Given I am displaying a question
		Then I answer it incorrectly
		Then I should not see a correct message


	Scenario: Check that the user is given an unanswered question
		Given I have answered a question 
		Then I should be given an unanswered question
			



