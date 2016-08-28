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

When(/^I click "([^"]*)" in the "([^"]*)" alert box$/) do |label, message|
  #page.accept_alert message do
  #  click_button(label)
  #end
  page.driver.browser.switch_to.alert.accept
  page.evaluate_script('window.confirm = function() { return true; }')
  page.click(label)
end