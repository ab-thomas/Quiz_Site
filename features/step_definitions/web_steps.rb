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

def fill_out_login(username, password)
  fill_in('username', with: username)
  fill_in('password', with: password)
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
  fill_out_login(username, password)
end

When(/^I press the "(.+?)" button$/) do |name|
  click_button name
end

Given(/^there is a valid user$/) do
  User.create!(username: username, email: email, password: password, password_confirmation: password)
end

When(/^I am logged in$/) do
  fill_out_login(username, password)
  click_button 'Login'
end

Then(/^I should be logged out$/) do
  expect(page).not_to have_content(username)
end
