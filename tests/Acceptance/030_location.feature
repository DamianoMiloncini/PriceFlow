Feature: Enter your location and remember it in your account

Scenario: User register location
Given I am logged in as "micka" and "1234" 
And I complete two-factor authentication with my "826978"
And I register my location as "821", "Av. Sainte Croix", "Montreal" , "Quebec", "H4L 3X9"
Then I should see "821" as my address in my account page


Scenario: User update saved location to account
Given I am logged in as "micka" and "1234" 
And I complete two-factor authentication with my "826978"
And I update my location to "3040", "Sherbrooke St W", "Montreal" , "Quebec", "H3Z 1A4"
Then I should see "3040" as my address in my account page
