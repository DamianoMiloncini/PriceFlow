Feature: Display list of items associated with a specefic recipe

  Scenario: User selects recipe and views associated items
  Given I am on "http://localhost/Recipe/recipeDetails/2?lang=en"
  Then I should see "Brand"
