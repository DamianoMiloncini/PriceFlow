Feature: Add an item to a user's specefic recipe

  Scenario: User searches a specefic item
  Given I am on "http://localhost/items"
  When I enter "flour" into the search field and submit the form
  Then I should see a list of "flour" items

  Scenario: User selects a specefic item
  Given I am on "http://localhost/items"
  When I click "flour" button
  Then I should be redirected to "http://localhost/items/flour"

  Scenario: User adds item to their "Vanilla Cake" recipe
  Given I am on "http://localhost/items/flour"
  When I click the "Add Item To Recipe"
  And I click the "Vanilla Cake" recipe button
  Then "Flour" should be added to my "Vanilla Cake" recipe

