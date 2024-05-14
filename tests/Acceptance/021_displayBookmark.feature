Feature: Display user's bookmark

Scenario: Display user's bookmark successfully
Given I am logged in as "micka" and "1234" 
And I complete two-factor authentication
When I go on "http://localhost/User/bookmark"
Then I should see "milk"
