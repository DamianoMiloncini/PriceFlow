Feature: Add an item to user's recipe

  Scenario: User searches a specefic item
  Given I am on "http://localhost/items"
  When I enter "flour" into the search field and submit the form
  Then I should see a list of "flour" items

  Scenario: User selects a specefic item
  Given I am on "http://localhost/items"
  When I click "flour" button
  Then I should be redirected to the "flour" page

  Scenario: User adds item to recipe
  Given I am on "http://localhost/items/flour"
  When I click the "Add Item To Recipe" button
  And I click the "Vanilla Cake" recipe option button
  Then "flour" should be added to my "Vanilla Cake" recipe

