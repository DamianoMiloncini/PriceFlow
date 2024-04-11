Feature: Delete item from user's cart

  Scenario: User deletes "Rice" from their cart
  Given I am on "http://localhost/cart/{id1}"
  When I click the "Remove" button for the "Rice" item
  Then "Rice" will be removed from my cart