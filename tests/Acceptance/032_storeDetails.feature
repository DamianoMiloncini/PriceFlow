Feature: See store details

Scenario: User views store details with a registered location
Given I am logged in as "micka" and "1234" 
And I complete two-factor authentication with my "265202"
And I register my location as "821", "Av. Sainte Croix", "Montreal" , "Quebec", "H4L 3X9"
When I click on the item "Malta Goya" on the home page 
And I click on the store "Super C, 1515 Blvd. Marcel-Laurin, Montréal, QC H4R 0B7"
Then I should see "Hours"