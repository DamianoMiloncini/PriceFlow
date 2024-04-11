Feature: Interactive map to display the location of item's associate with the user's cart

  Scenario: User views the locations of the items in their cart
  Given I am on "http://localhost/cart/{id1}"
  When I click the "Rice" item in my cart
  Then I will see the store location of the "Rice" item in my cart