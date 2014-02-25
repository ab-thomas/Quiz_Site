# require_relative '../homepage_test.feature'

Given "I am in the homepage" do 
 visit '/'
end

Then /^I should see "([^\"]*)"$/ do |text|
  page.should have_content(text)
end


Given(/^There is a question$/) do
  Question.create(question: "This is a question", answer: "true")
end

Then(/^i should see a question$/) do
  page.should
end

Then(/^I should be logged in$/) do
  pending # express the regexp above with the code you wish you had
end


