Feature: Delete Recipe
  In order to remove unwanted recipes
  As a user
  I want to be able to delete my own recipes
  
  Scenario: Delete personal recipe
    Given I am logged in
    And I complete two-factor authentication with my "749739"
    And I am on "http://localhost/Recipe/displayAll"
    Then I see "Lasagna"
    When I click element "button[name='delete-btn']"
    Then I don't see "Lasagna"
