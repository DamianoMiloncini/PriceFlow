Feature: Delete item from user's personal recipe

  Scenario: User deletes "Milk" from recipe
  Given I am logged in
  And I complete two-factor authentication with my "031168" 
  And I am on "http://localhost/Recipe/addItemToRecipe/2"
  Then I see "Milk"
  When I click "Del"
  Then "Milk" gets deleted
