Given /^there is a state called "([^"]*)"$/ do |state|
  State.create!(:name => state)
end

When /^I follow "([^"]*)" for the "([^"]*)" state$/ do |link, name|
  state = State.find_by_name!(name)
  steps(%Q{When I follow "#{link}" within "#state_#{state.id}"})
end
