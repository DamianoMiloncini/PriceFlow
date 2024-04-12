Feature: ViewItem
  In order to view an item 
  As a Visitor or logged in User
  I need to have searched for an item and have at least 1 item returned and click on the item

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

