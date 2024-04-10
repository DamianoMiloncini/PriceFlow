Feature: Display list of items associated with a specefic recipe

  Scenario: User selects recipe and views associated items
  Given I am on "http://localhost/recipes"
  When I click the "Vanilla Cake" recipe
  Then I should be redirected to "http://localhost/recipes/vanilla-cake" 
  And I should see a list of all the item associated with the "Vanilla Cake" recipe