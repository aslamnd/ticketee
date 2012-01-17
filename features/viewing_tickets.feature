Feature: Viewing tickets
  In order to view the tickets for a project
  As a user
  I want to see them on the project's page

  Background:
    Given there are the following users:
      | email             | password |
      | user@ticketee.com | password |
    And there is a project called "Textmate 2"
    And "user@ticketee.com" has created a ticket for this project:
      | title          | description                        |
      | Make it shiny! | Gradients! Something silly! Oh my! |
    And there is a project called "Internet Explorer"
    And "user@ticketee.com" has created a ticket for this project:
      | title               | description  |
      | Standard compliance | Isn't a joke |
    And I am on the homepage


  Scenario: Viewing the tickets for a given project
    When I follow "Textmate 2"
    Then I should see "Make it shiny!"
    And I should not see "Standard compliance"
    When I follow "Make it shiny!"
    Then I should see "Make it shiny!" within "#ticket h2"
    And I should see "Gradients! Something silly! Oh my!"

    When I follow "Ticketee"
    And I follow "Internet Explorer"
    Then I should see "Standard compliance"
    Then I should not see "Make it shiny!"
    When I follow "Standard compliance"
    Then I should see "Standard compliance" within "#ticket h2"
    And I should see "Isn't a joke"
