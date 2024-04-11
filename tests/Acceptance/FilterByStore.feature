Feature: FilterByStore
  In order to filter item search by store
  As a visitor or logged in user
  I need to have searched for an item, gotten results and applied store filters

  Scenario: try SearchForItem "milk"
        Given I am on "http://localhost/home"
        When I enter "milk" in the search bar
        And click Search
        Then I am redirected to "http://localhost/items/milk"
        And I see an array of "item" whose attribute "name" contains "milk"

  Scenario: try FilterByStore by Walmart
        Given I am on "http://localhost/items/milk"
        And I see an array of "item" whose attribute "name" contains "milk"
        When I set the store filter to "Walmart"
        Then the array of items only displays items whose "store" attribute is "Walmart"
