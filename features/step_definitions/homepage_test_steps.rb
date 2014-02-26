
Given /^I am in the homepage$/ do 
 visit '/'
end

Then(/^I should see "([^\"]*)"$/) do |text|
  page.should have_content(text)
end

Given /^There are two questions$/ do

  Question.create(question: "This is a question", answer: "true")
  Question.create(question: "This is another question", answer: "false")
end

And /^I should not see "(.*?)"$/ do |text| 
  page.should_not have_content(text)
end

Then(/^I should see True and False$/) do 
  page.should have_content("True")
  page.should have_content("False")
end
