Given /^I am on the homepage$/ do
  visit root_path
end

When /^I follow "([^"]*)"$/ do |link|
  click_link link
end

When /^I fill in "([^"]*)" with "([^"]*)"$/ do |field, value|
  fill_in field, :with => value
end

When /^I press "([^"]*)"$/ do |label|
  click_button label
end

Then /^I should see "([^"]*)"$/ do |text|
  page.should have_content text
end

Then /^I should not see "([^"]*)"$/ do |text|
  page.should_not have_content text
end

Then /^I should see "([^"]*)" within "([^"]*)"$/ do |text, element|
  within(element) do
    page.should have_content text
  end
end

Then /^I should not see "([^"]*)" within "([^"]*)"$/ do |text, element|
  within(element) do
    page.should_not have_content text
  end
end

Then /^I should not see the "([^"]*)" link$/ do |text|
  page.should_not have_css("a", :text => text), "Expected to see the #{text.inspect} link, but did not"
end

Given /^I am signed in as "([^"]*)"$/ do |email|
  @user = User.find_by_email!(email)
  steps("Given I am signed in as them")
end

Then /^I should see the "([^"]*)" link$/ do |text|
  page.should have_css("a", :text => text), "Expected to see the #{text.inspect} link, but did not"
end

When /^I attach the file "([^"]*)" to "([^"]*)"$/ do |file, label|
  attach_file(label, file)
end

Then /^show me the page$/ do
  save_and_open_page
end

Given /^I follow "([^"]*)" within "([^"]*)"$/ do |link, selector|
  within(selector) do
    click_link link
  end
end

When /^I select "([^"]*)" from "([^"]*)"$/ do |option, list|
  select(option, :from => list)
end

Then /^I should not see "([^"]*)" element$/ do |css|
  page.should_not(have_css(css), "Expected to not see the #{css} element, but did.")
end
