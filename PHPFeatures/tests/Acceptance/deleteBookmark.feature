Feature: Delete a user's bookmark item

Scenario: Delete a user's bookmark item
Given I am on "http://localhost/User/bookmark"
When I click "delete" button on "item1"
Then I should not see "item1" saved anymore