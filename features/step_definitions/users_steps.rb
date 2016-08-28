When(/^I am on the Sign up page$/) do
  visit new_user_registration_path
end

When(/^I am on the Sign in page$/) do
  visit new_user_session_path
end

Given /^I am a user with an email "([^"]*)" and password "([^"]*)"$/ do |email, password|
  user = User.new(
      email: email,
      password: password,
      password_confirmation: password
  )
  user.save
end

Given(/^I am logged in with an email "([^"]*)" and password "([^"]*)"$/) do |email, password|
  visit new_user_session_path
  fill_in 'user_email', with: email
  fill_in 'user_password', with: password
  click_button 'Log in'
end
