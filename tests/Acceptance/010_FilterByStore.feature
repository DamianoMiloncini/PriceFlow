Feature: FilterByStore
  In order to filter item search by store
  As a visitor or logged in user
  I need to have searched for an item, gotten results and applied store filters
   
Scenario: try SearchForItem "milk"
        Given I login
        And I am on "http://localhost/home"
        When I enter "milk" in the search bar
        And I click "searchButton"
        Then I am redirected to "http://localhost/Item/search/milk"
        And I see an array of "item" whose attribute "name" contains "milk"

   
  Scenario: try FilterByStore for SuperC
        Given I am on "http://localhost/Item/search/milk"
        And I see an array of "item" whose attribute "name" contains "milk"
        When I set the store filter to "superc"
        And I click "Apply"
        Then I see "Chocolate Milk Protein Shake"