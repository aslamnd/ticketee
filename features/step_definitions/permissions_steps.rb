Given /^"([^"]*)" can view the "([^"]*)" project$/ do |user, project|
  Permission.create!(:user => find_user(user),
                     :thing => find_project(project),
                     :action => "view")
end


permission_step = /^"([^"]*)" can ([^"]*) ([o|i]n)?\s? the "([^"]*)" project$/

Given permission_step do |user, permission, on, project|
  create_permission(user, find_project(project), permission)
end


def create_permission(email, object, action)
  Permission.create!(:user => find_user(email),
                     :thing => object,
                     :action => action)
end

def find_user(email)
  User.find_by_email!(email)
end

def find_project(name)
  Project.find_by_name!(name)
end
