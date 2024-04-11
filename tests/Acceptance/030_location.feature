Feature: Enter your location and remember it in your account

Scenario: User enter location
Given I am on "http://localhost/Home/location"
When I select "Montreal" and "Quebec"
And I click "Enter" button
Then I should see "Provigo"

Scenario: User saves location to account
Given I am on "http://localhost/User/login"
When I enter "username1" and "1234" in the login form
And I select "local1" and "prov1"
And I click "Save Location" button
Then I should see "local1" and "prov1"

Scenario: User update saved location to account
Given I am on "http://localhost/User/login"
When I enter "username1" and "1234" in the login form
And I click the "Edit location" button
When I update my location to "local2" and "prov2"
And I click the "Update" button
Then I should see "local2" and "prov2"
