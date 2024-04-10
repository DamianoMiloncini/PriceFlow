Feature: Delete item from user's personal recipe

  Scenario: User deletes "Flour" from "Vanilla Cake" recipe and verifies removal
  Given I am on "http://localhost/recipes/vanilla-cake"
  When I click the "Remove" button for the "Flour" item associated with the "Vanilla Cake" recipe
  Then "Flour" will be removed from the "Vanilla Cake" recipe list