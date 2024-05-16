Feature: Create Recipe
  In order to save new recipes
  As a user
  I want to be able to create a new recipe
  
  Scenario: Create recipe
    Given I am logged in
    When I am on the "/Recipe/create" page
    And I enter "rice" in the title field
    And I enter "rice" in the content field
    And I enter "15" for the duration
    And I add the image "6629b8e2eb2f6_image5" to the recipe
    And I select "public" for the privacy status
    And I click the "Continue" button
    Then I should be redirected to "http://localhost/Recipe/addItemToRecipe/"
