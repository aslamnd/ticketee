Given /^there is a state called "([^"]*)"$/ do |state|
  State.create!(:name => state)
end
