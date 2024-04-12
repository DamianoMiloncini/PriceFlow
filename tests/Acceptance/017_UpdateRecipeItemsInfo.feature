Feature: Update item information of a user's specefic recipe

  Scenario: User updates "Flour" in their "Vanilla Cake" recipe
  Given I am logged into my account
  And I am on "http://localhost/recipes/vailla-cake"
  When I click the "Update" button associated with the "Flour" item
  Then I should see a form to update the information of the "Flour" item in the "Vanilla Cake" recipe
