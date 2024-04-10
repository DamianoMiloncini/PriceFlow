Feature: Update the quantity of a specefic item in the user's cart

  Scenario: User updates the quantity of carrots
  Given I am on "http://localhost/cart/{id1}"
  And the "Carrot" item has a quantity of 5
  When I click the "+" button associated with the "Carrot" item once
  Then the quantity of "Carrot" will be 6