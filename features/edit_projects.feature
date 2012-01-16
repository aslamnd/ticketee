Feature: Editing projects
  In order to update project information
  As a user
  I want to be able to do that thorough interface

  Background:
    Given there is a project called "Textmate 2"
    And I am on the homepage
    When I follow "Textmate 2"
    And I follow "Edit Project"

  Scenario: Updating a project
    And I fill in "Name" with "Textmate 2 beta"
    And I press "Update Project"
    Then I should see "Project has been updated."
    And I should be on the project page for "Textmate 2 beta"

  Scenario: Updating a project with invalid attributes is bad
    And I fill in "Name" with ""
    And I press "Update Project"
    Then I should see "Project has not been updated."

