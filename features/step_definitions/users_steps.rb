When(/^I am on the Sign up page$/) do
  visit new_user_registration_path
end

When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |arg1, arg2|
  fill_in arg1, :with => arg2
end

When(/^I press "([^"]*)"$/) do |arg1|
  click_button arg1
end