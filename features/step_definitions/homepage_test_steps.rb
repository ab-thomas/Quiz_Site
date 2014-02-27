
Given(/^I am in the homepage$/) do
  visit '/'
end

Then(/^I should see "([^\"]*)"$/) do |text|
  page.should have_content(text)
end

Given(/^There are two questions$/) do
  Question.create(question: 'This is a question', answer: 'true')
  @first_question_id = Question.all.first.id.to_s
  Question.create(question: 'This is another question', answer: 'false')
  @second_question_id = Question.all.second.id.to_s
end

Given(/^I am displaying a question$/) do
  visit '/questions/' + @first_question_id
end

And(/^I should not see "(.*?)"$/) do |text|
  page.should_not have_content(text)
end

Then(/^I should see True and False$/) do
  page.should have_content('True')
  page.should have_content('False')
end

Then(/^I should be able to add a question and answer$/) do
  fill_in('question_question', with: 'Adding a question')
  choose('True')
  click_button('Submit Question')
end

Then(/^I answer it correctly$/) do
  choose('True')
  click_button('Submit')
end

Then(/^I should see a correct message$/) do
  page.should have_content('Correct Answer!')
end

Then(/^I answer it incorrectly$/) do
  choose('False')
  click_button('Submit')
end

Then(/^I should not see a correct message$/) do
  page.should_not have_content('Correct Answer!')
end

Then(/^I should see a next button$/) do
  click_button('Next')
end

Given(/^I have answered a question$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should be given an unanswered question$/) do
  pending # express the regexp above with the code you wish you had
end
