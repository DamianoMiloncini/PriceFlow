Feature: Delete a user's bookmark item

Scenario: Delete a user's bookmark item
Given I am logged in as "micka" and "1234" 
And I complete two-factor authentication with my "924748"
When I go on "/User/bookmark"
And I click "delete_item" button on bookmark item "/bookmark/delete/1" 
Then I should not see "milk" 
