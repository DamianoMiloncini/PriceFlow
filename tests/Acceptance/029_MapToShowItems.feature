Feature: Interactive map
  In order to view the map of stores
  As an authenticated user
  I want to be able to see the stores around my location

  Scenario: User views the map
    Given I am logged in
    And I complete two-factor authentication
    And I am on "http://localhost/cart"
    Then I see a map

