Feature: Search for recipe
  In order to find a specific recipe
  As a user
  I want to search for a recipe using a keyword

  Scenario: Search for recipe
    Given I am on the "/Recipe/displayAll" page
    When I enter "Fresh Fruit" into the search prompt
    And I click on the "Search" button
    And I should see a list of "Fresh Fruit" recipes
