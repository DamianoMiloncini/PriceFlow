Feature: Display Recipes
  In order to view available recipes
  As a user
  I want to be able to see a list of recipes
  
  Scenario: Display recipes with Fresh Fruit
    Given I am on the "/Recipe/displayAll" page
    Then I should see "Fresh Fruit"
