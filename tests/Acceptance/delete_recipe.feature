Feature: Delete Recipe
  In order to remove unwanted recipes
  As a user
  I want to be able to delete my own recipes
  
  Scenario: Delete personal recipe
    Given I am logged in
    And I have a recipe titled "Spaghetti Carbonara"
    When I delete the recipe "Spaghetti Carbonara"
    Then the recipe "Spaghetti Carbonara" should be deleted successfully