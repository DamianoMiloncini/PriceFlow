Feature: View Recipe Price
  In order to know the cost of recipes
  As a user
  I want to be able to view the current price of a recipe
  
  Scenario: View current price of a recipe
    Given I am on "http://localhost/recipe/spaghetti-carbonara"
    When I view the current price of the recipe "Spaghetti Carbonara"
    Then I should see the total price of ingredients per store
