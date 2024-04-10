Feature: Update Recipe
  In order to modify personal recipes
  As a user
  I want to be able to update recipe details
  
  Scenario: Update personal recipe
    Given I am logged in
    And I have a recipe titled "Spaghetti Carbonara" with cooking instructions "boil pasta, fry bacon, mix with eggs and cheese"
    When I update the cooking instructions of the recipe "Spaghetti Carbonara" to "boil pasta, fry bacon, mix with eggs, cheese, and cream"
    Then the cooking instructions for the recipe "Spaghetti Carbonara" should be updated successfully