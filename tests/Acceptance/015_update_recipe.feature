Feature: Update Recipe
  In order to modify personal recipes
  As a user
  I want to be able to update recipe details
  
  Scenario: Update personal recipe
    Given I am logged in
	  And I complete two-factor authentication with my "857870"
	  And I am on "http://localhost/Recipe/edit/5"
	  When I set the "privacy_status" attribute of the recipe to "public"
	  And I click "Save Changes"
	  Then I am redirected to "http://localhost/Recipe/displayPrivate"
	  And I see "Lasagna" recipe