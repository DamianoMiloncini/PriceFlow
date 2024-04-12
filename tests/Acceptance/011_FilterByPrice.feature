Feature: FilterByPrice
  In order to filter item search by price
  As a visitor or logged in user
  I need to have searched for an item, gotten results and applied price filters

  Scenario: try SearchForItem "milk"
        Given I am on "http://localhost/home"
        When I enter "milk" in the search bar
        And click Search
        Then I am redirected to "http://localhost/items/milk"
        And I see an array of "item" whose attribute "name" contains "milk"  

  Scenario: try FilterByPrice for lowest to highest
	Given I am on "http://localhost/items/milk"
	And I see an array of "item" whose attribute "name" contains "milk"
	When I set the price filter to "lowest to highest"
	Then the array of items is sorted by item whose "price" attribute is the lowest

  Scenario: try FilterByPrice for highest to lowest
        Given I am on "http://localhost/items/milk"
        And I see an array of "item" whose attribute "name" contains "milk"
        When I set the price filter to "highest to lowest"
        Then the array of items is sorted by item whose "price" attribute is the lowest

  Scenario: try FilterByPrice from chosen range
        Given I am on "http://localhost/items/milk"
        And I see an array of "item" whose attribute "name" contains "milk"
        When I input a value in the price filter minimum range
        And I input a value in the price filter maximum range
        Then the array of items is sorted by item whose "price" attribute is the lowest
        And only the items whose "price" attribute fits in the range are displayed  
