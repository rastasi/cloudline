Then(/^I should see "(.*?)"$/) do |title|
  assert page.has_content?(title)
end