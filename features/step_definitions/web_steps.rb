When(/^I go to sign up$/) do
  visit '/users/new'
end

When(/^I fill in the following:$/) do |fields|
  fields.rows_hash.each do |name, value|
    fill_in(name, :with => value)
  end
end

When(/^I press "([^\"]+)"$/) do |name|
  click_button(name)
end

Then(/^I should be added as a user$/) do
  expect(User.exists?).to eq(true)
end

