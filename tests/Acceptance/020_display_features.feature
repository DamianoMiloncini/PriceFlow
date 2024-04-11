Feature: Display Recipes
  In order to view available recipes
  As a user
  I want to be able to see a list of recipes
  
  Scenario: Display recipes
    Given I am logged in
    When I view the recipes
    Then I should see a list of recipes
  
  Scenario: Display personal recipes
    Given I am logged in
    When I view my profile
    Then I should see only my own recipes
