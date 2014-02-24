# require_relative '../homepage_test.feature'

Given "I am in the homepage" do 
 visit '/'
end

Then /^I should see "([^\"]*)"$/ do |text|
  page.should have_content(text)
end



