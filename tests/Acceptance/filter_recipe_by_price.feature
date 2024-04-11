Feature: Filter Recipe by Price
  In order to sort recipes by cost
  As a user
  I want to be able to filter recipes by price
  
  Scenario: Filter recipes by price
    Given I am logged in
    And there are recipes available
    When I filter recipes by price
    Then I should see recipes sorted by price