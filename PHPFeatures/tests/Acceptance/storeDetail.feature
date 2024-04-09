Feature: Update store details

Scenario: User views store details
Given I am on "http://localhost/Home/map"
When I click "store1"
Then I should see the address details for "store1" displayed on the screen