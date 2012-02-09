Feature: Creating states
  In order to be able to specify other states for tickets
  As an admin
  I wan to add them to the application

  Background:
    Given there are the following users:
      | email              | password | admin |
      | admin@ticketee.com | password | true  |
    And I am signed in as them

  Scenario: Creating states
    When I follow "Admin"
    And I follow "States"
    And I follow "New States"
    And I fill in "Name" with "Duplicate"
    And I press "Create State"
    Then I should see "State has been created."
