Feature: ShareRecipe
  In order to share a recipe
  As a logged in user
  I need to have created a recipe, set it to public, then I share the link to my recipe

  Scenario: try ShareRecipe "Carrot"
	Given I login 
	And I complete two-factor authentication with my "code"
	And I am on "http://localhost/Recipe/edit/1"
	When I set the "privacy_status" attribute of the recipe to "public"
	And I click "Save Changes"
	Then I am redirected to "http://localhost/Recipe/displayAll"
	And I see "Carrot"

 	Scenario: try Viewing "Carrot"
		Given I am on "http://localhost/Recipe/recipeDetails/1"
		Then I see "Carrot"
	
