When(/^I am on the Sites page$/) do
  visit sites_path
end

When(/^I am on the New site page$/) do
  visit new_site_path
end

Given(/^I have a site named "([^"]*)" with url "([^"]*)" for user "([^"]*)"$/) do |name, url, user|
  user = User.find_by_email(user)
  Site.create!(
    name: name,
    url: url,
    user: user
  )
end

When(/^I am on the site page named "([^"]*)"$/) do |name|
  site = Site.find_by_name(name)
  visit site_path(site)
end