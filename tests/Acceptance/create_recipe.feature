Feature: Create Recipe
  In order to save new recipes
  As a user
  I want to be able to create a new recipe
  
  Scenario: Create recipe
    Given I am logged in
    When I create a new recipe with title "Spaghetti Carbonara" and ingredients "pasta, eggs, bacon, cheese"
    Then the recipe "Spaghetti Carbonara" should be created successfully

  Scenario: Create recipe
    Given I am logged in
    When I create a new recipe with title "Vanilla Cake" and ingredients "eggs, vanilla"
    Then the recipe "Vanilla Cake" should be created successfully
    And I see "Vanilla Cake Recipe created"
