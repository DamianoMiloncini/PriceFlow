Feature: Search Recipe
  In order to find specific recipes
  As a user
  I want to be able to search for recipes
  
  Scenario: Search for recipe
    Given I am logged in
    And there are recipes available
    When I search for "lasagna"
    Then I should see relevant recipes