Feature: Delete tickets
  In order to remove needless tickets
  As a user
  I want to press a button and make them disappear

  Background: 
    Given there are the following users:
      | email             | password |
      | user@ticketee.com | password |
    And I am signed in as them
    Given there is a project called "Textmate 2"
    And "user@ticketee.com" can view the "Textmate 2" project
    And "user@ticketee.com" can delete tickets in the "Textmate 2" project
    And "user@ticketee.com" has created a ticket for this project:
      | title          | description                   |
      | Make it shiny! | Gradients! Starbursts! Oh my! |
    Given I am on the homepage
    When I follow "Textmate 2"
    And I follow "Make it shiny!"

  Scenario: Deleting a ticket
    When I follow "Delete Ticket"
    Then I should see "Ticket has been deleted."
    And I should be on the project page for "Textmate 2"
