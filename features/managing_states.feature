Feature: Managing states
  In order to change information about a state
  As a admin
  I wan to be able to set a states name and default status

  Background:
    Given I have run the seed task
    And I am signed in as "admin@ticketee.com"

  Scenario: Making a state as default
    Given I am on the homepage
    When I follow "Admin"
    And I follow "States"
    And I follow "Make default" for the "New" state
    Then I should see "New is now the default state."

