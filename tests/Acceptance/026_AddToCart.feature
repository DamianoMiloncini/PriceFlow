Feature: AddToCart
  In order to add an item to my cart
  As a logged in User
  I need to be viewing an item

  Scenario: try SearchForItem "milk"
        Given I login
        And I am on "http://localhost/home"
        When I enter "milk" in the search bar
        And I click "searchButton"
        Then I am redirected to "http://localhost/Item/search/milk"
        And I see an array of "item" whose attribute "name" contains "milk"

    Scenario: try ViewItem "milk"
	Given I am on "http://localhost/Item/search/milk"
      And I see an array of "item" whose attribute "name" contains "milk"
	When I click the "item" card 
	Then I see "name", "brand", "price", "quantity" and "image" of said "item"

  Scenario: try AddToCart "milk"
  Given I login
     And I complete two-factor authentication with my "code"
  And I am on "http://localhost/Item/info/metro055300110027"
	When I click the "Add to Cart" button
  Then I am redirected to "http://localhost/cart"
  And I see "milk"