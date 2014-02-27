username = 'mr_test'
password = 'password'
email = 'test@test.com'

def sign_up(username, email, password)
  visit '/users/new'
  fill_in('user[username]', with: username)
  fill_in('user[email]', with: email)
  fill_in('user[password]', with: password)
  fill_in('user[password_confirmation]', with: password)
  click_button 'Sign Up'
end

def sign_in(username, password)
  fill_in('user[username]', with: username)
  fill_in('user[password]', with: password)
end

When(/^I go to sign up$/) do
  sign_up(username, email, password)
end

Then(/^I should be added as a user$/) do
  expect(User.find_by_username(username)).to be_true
end

Then(/^I should be logged in$/) do
  expect(page).to have_content(username)
end

Given(/^desired username is taken$/) do
  sign_up(username, email, password)
end

When(/^I fill in username and password$/) do
  sign_in(username, password)
end

When(/^I press the login button$/) do
  click_button 'Login'
end
