Feature: Add an item to a user's specefic recipe

  Scenario: User adds item to their "Fresh Fruit" recipe
  Given I am logged in
  And I complete two-factor authentication with my "416375" 
  And I am on "http://localhost/Recipe/addItemToRecipe/2"
  Then I see "Milk"
  When I click "Add"
  Then I see "Milk" in the item list

