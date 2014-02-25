When(/^I go to sign up$/) do
  @username = "mr_test"
  @password = "password"
  @email = "test@test.com"
  visit '/users/new'
  fill_in('user[username]', with: @username)
  fill_in('user[email]', with: @email)
  fill_in('user[password]', with: @password)
  fill_in('user[password_confirmation]', with: @password)
  click_button 'Sign Up'
end

Then(/^I should be added as a user$/) do
  expect(User.find_by_username(@username)).to be_true
end

Then(/^I should be logged in$/) do
 expect(page).to have_content(@username)
end

Given(/^desired username is taken$/) do
  User.create(username: @username)
end

