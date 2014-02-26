
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
			



