Feature: Display user's bookmark

Scenario: Display user's bookmark successfully
Given I am on "http://localhost/User/account"
When I click "Bookmarks" button
Then I should be redirected to the Bookmarks Page