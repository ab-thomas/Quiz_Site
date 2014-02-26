# require_relative '../homepage_test.feature'

Given "I am in the homepage" do
  visit '/'
end

Then(/^I should see "([^\"]*)"$/) do |text|
  page.should have_content(text)
end

Given(/^There is a question$/) do
  Question.create(question: "This is a question", answer: "true")
end

Then(/^i should see a question$/) do
  page.should
end
