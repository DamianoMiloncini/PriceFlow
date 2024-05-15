Feature: Filter Recipe by Price
  In order to sort recipes by cost
  As a user
  I want to be able to filter recipes by price
  
  Scenario: Filter recipes by price
    Given I am on the "/Recipe/displayAll" page
    When I enter minimum price "10" and maximum price "20"
    And I click on the Apply button
    Then I should see the recipes "Gourmet Steak" and "Actual Steak" in the recipe list on this page "http://localhost/Recipe/filterByPriceRange?min_price=9&max_price=20"
