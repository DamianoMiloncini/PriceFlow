Feature: Display the list of items in a user's cart
  In order to see the items in my cart
  As an authenticated user
  I want to be able to see the items in my cart

  Scenario: Display items in user's cart
    Given I am logged in
    And I complete two-factor authentication with my "901279"
    And I am on "http://localhost/cart"
    Then I see milk