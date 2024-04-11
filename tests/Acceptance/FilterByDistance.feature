Feature: FilterByDistance
  In order to filter item search by distance
  As a visitor or logged in user
  I need to have searched for an item, gotten results and applied distance filter

  Scenario: try SearchForItem "milk"
        Given I am on "http://localhost/home"
        When I enter "milk" in the search bar
        And click Search
        Then I am redirected to "http://localhost/items/milk"
        And I see an array of "item" whose attribute "name" contains "milk"

  Scenario: try FilterByDistance from closest to furthest
        Given I am on "http://localhost/items/milk"
        And I see an array of "item" whose attribute "name" contains "milk"
        When I set the distance filter to "closest to furthest"
        Then the array of items is sorted by item whose "distance" attribute is the lowest

   Scenario: try FilterByDistance from furthest to closest
        Given I am on "http://localhost/items/milk"
        And I see an array of "item" whose attribute "name" contains "milk"
        When I set the distance filter to "furthest to closest"
        Then the array of items is sorted by item whose "distance" attribute is the highest
  
   Scenario: try FilterByDistance from chosen range
        Given I am on "http://localhost/items/milk"
        And I see an array of "item" whose attribute "name" contains "milk"
        When I input a value in the distance filter minimum range
	And I input a value in the distance filter maximum range   
        Then the array of items is sorted by item whose "distance" attribute is the lowest
	And only the items whose "distance" attribute fits in the range are displayed
