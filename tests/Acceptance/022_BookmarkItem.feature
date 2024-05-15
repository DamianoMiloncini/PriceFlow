Feature: BookmarkItem
  In order to bookmark an item
  As a logged in User
  I need to be viewing an item then I click on the bookmark button

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

  Scenario: try bookmark "milk"
        Given I am on "http://localhost/items/metro055300110027"
        When I click the "Bookmark" button
        Then I see "Skim Milk added to bookmarks" message
