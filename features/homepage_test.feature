Feature: Homepage
	
	# Before do 
	# 	Question.create([{ question: 'Is it dark at night?', answer: 'True' }])=
	# end	
	Scenario: Check welcome text presence
		Given I am in the homepage
		Then I should see "Welcome" 




