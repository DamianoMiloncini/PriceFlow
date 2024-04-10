Feature: Display the list of items in a user's cart

  Scenario: User views the items in their cart
  Given I am on "http://localhost/home"
  When I click the "cart" icon button
  Then I should be redirected to "http://localhost/cart/{id1}" 
  And I should see a list of all the item in my cart