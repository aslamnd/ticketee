Then /^I should be on the project page for "([^"]*)"$/ do |project_name|
  visit project_path(Project.find_by_name!(project_name))
end

Given /^there is a project called "([^"]*)"$/ do |name|
  @project = Factory(:project, :name => name)
end
