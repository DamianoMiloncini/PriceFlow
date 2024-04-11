Feature: Search Recipe
  In order to find specific recipes
  As a user
  I want to be able to search for recipes
  
  Scenario: Search for recipe
    Given I am on "http://localhost/home"
    When I enter "lasagna" into the search prompt
    And I click on the "Search" button
    Then I should a list of "lasagna" recipes
