Feature: BookmarkItem
  In order to bookmark an item
  As a logged in User
  I need to be viewing an item then I click on the bookmark button

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

  Scenario: try bookmark "milk"
        Given I am on "http://localhost/items/{id1}"
        When I click the "Bookmark item" button
        Then I should see a "{id1} should be added to my bookmarks" message
