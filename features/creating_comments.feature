Feature: Creating comments
  In order to update a ticket's progress
  As a user
  I want to leave comments

  Background:
    Given there are the following users:
      | email             | password |
      | user@ticketee.com | password |
    And I am signed in as them
    And there is a project called "Ticketee"
    And "user@ticketee.com" can view the "Ticketee" project
    And "user@ticketee.com" has created a ticket for this project:
      | title                   | description                            |
      | Change a ticket's state | You should be able to cerate a comment |
    Given I am on the homepage
    And I follow "Ticketee" within "#projects"
    And there is a state called "Open"

  Scenario: Creating a comment
    When I follow "Change a ticket's state"
    And I fill in "Text" with "Added a comment!"
    And I press "Create Comment"
    Then I should see "Comment has been created."
    And I should see "Added a comment!" within "#comments"

  Scenario: Changing a ticket's state
    Given "user@ticketee.com" can change states on the "Ticketee" project
    When I follow "Change a ticket's state"
    And I fill in "Text" with "This is a real issue"
    And I select "Open" from "State"
    And I press "Create Comment"
    Then I should see "Comment has been created."
    And I should see "Open" within "#ticket .state"
    And I should see "Open" within "#comments"

  Scenario: A user without permission cannot change the state
    When I follow "Change a ticket's state"
    Then I should not see "#comment_state_id" element
