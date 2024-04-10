Feature: Add an item to user's cart

  Scenario: User searches a specefic item
  Given I am on "http://localhost/items"
  When I enter "cake" into the search field and submit the form
  Then I should see a list of "cake" items

  Scenario: User selects a specefic item
  Given I am on "http://localhost/items"
  When I click "Vanilla Cake" button
  Then I should be redirected to the "vanilla cake" page

  Scenario: User adds item to cart
  Given I am on "http://localhost/items/vanilla-cake"
  When I click the "Add Item To Cart" button
  Then "Vanilla Cake" should be added to my cart

