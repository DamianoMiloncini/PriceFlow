Feature: ShareRecipe
  In order to share a recipe
  As a logged in user
  I need to have created a recipe, set it to public, then I share the link to my recipe

  Scenario: try ShareRecipe "Spaghetti Carbonara"
	Given I am a logged in user
	And the owner of the recipe
	And I am on "http://localhost/recipes/Spaghetti_Carbonara"
	When I set the "status" attribute of the recipe to "public"
	Then I should be able to view a link to my recipe 
	And see the recipe even if not logged in or not the owner of the recipe
	
