Feature: Filter Recipe by Date
  In order to sort recipes chronologically
  As a user
  I want to be able to filter recipes by date
  
  Scenario: Filter recipes by date created
    Given I am logged in
    And there are recipes available
    When I filter recipes by date created
    Then I should see recipes sorted by date created
