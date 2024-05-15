Feature: ShareRecipe
  In order to share a recipe
  As a logged in user
  I need to have created a recipe, set it to public, then I share the link to my recipe

  Scenario: try ShareRecipe "Carrot"
	Given I am on "http://localhost/Recipe/edit/1"
	When I set the "Privacy" attribute of the recipe to "Public"
	Then I should be able to view a link to my recipe 
	And see the recipe even if not logged in or not the owner of the recipe
	
