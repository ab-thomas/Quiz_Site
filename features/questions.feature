
Feature: Questions 

	Background:
		Given There are two questions

	Scenario: Check there is a question
		Given I am in the homepage
		Then I should see "This is a question"
		And I should not see "This is another question"

		Scenario: Check it has True and False
			Given I am in the homepage
			Then I should see True and False
			



