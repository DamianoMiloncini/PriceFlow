Feature: AddToCart
  In order to add an item to my cart
  As a logged in User
  I need to be viewing an item

  Scenario: try SearchForItem "milk"
        Given I am on "http://localhost/home"
        When I enter "milk" in the search bar
        And click Search
        Then I am redirected to "http://localhost/items/milk"
        And I see an array of "item" whose attribute "name" contains "milk"

  Scenario: try ViewItem "milk"
        Given I am on "http://localhost/items/milk"
        And I see an array of "item" whose attribute "name" contains "milk"
        When I click on an "item" from the array
        Then I see "name", "brand", "price", "quantity" and "image" of said "item"
  
  Scenario: try AddToCart "milk"
	Given I am on "http://localhost/items/{id1}"
	When I click the "Add Item to Cart" button
	Then "{id1} should be added to my cart"
