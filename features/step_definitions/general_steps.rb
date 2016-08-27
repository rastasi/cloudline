Then(/^I should see "(.*?)"$/) do |title|
  assert page.has_content?(title)
end

When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |id, value|
  fill_in id, :with => value
end

When(/^I click button "([^"]*)"$/) do |label|
  click_button label
end

When(/^I click link "([^"]*)"$/) do |label|
  click_link label
end