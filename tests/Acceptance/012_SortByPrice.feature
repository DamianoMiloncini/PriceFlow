Feature: SortByPrice
  In order to sort item search by price from low to high
  As a visitor or logged in user
  I need to have searched for an item, gotten results and applied sorting option

 Scenario: try SearchForItem "milk"
        Given I login
        And I am on "http://localhost/home"
        When I enter "milk" in the search bar
        And I click "searchButton"
        Then I am redirected to "http://localhost/Item/search/milk"
        And I see an array of "item" whose attribute "name" contains "milk"

  Scenario: try SortByPrice for low to high
     Given I am on "http://localhost/Item/search/milk"
	And I see an array of "item" whose attribute "name" contains "milk"
	When I click "Low to High"
	Then I see "2% Milk"

  Scenario: try SortByPrice for high to low
  Given I am on "http://localhost/Item/search/milk"
  And I see an array of "item" whose attribute "name" contains "milk"
  When I click "High to Low"
  Then I see "3.25% Homogenized Milk, PurFiltre"
