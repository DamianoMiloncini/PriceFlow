Feature: Bookmarking an item (adding to favorites)

Scenario: User saves an item to their Bookmarking
Given I am on "http://localhost/User/login"
When I enter "username1" and "1234" in the login form
And I click "Save to bookmark" button on "item1"
Then I should see "item1" saved to my bookmarks in the database under my account