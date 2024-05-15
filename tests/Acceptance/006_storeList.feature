Feature: See store list

Scenario: User views store list with a registered location
Given I am logged in as "micka" and "1234" 
And I complete two-factor authentication with my "644564"
And I register my location as "821", "Av. Sainte Croix", "Montreal" , "Quebec", "H4L 3X9"
When I click on the item "Malta Goya" on the home page 
Then I should see "Super C, 1515 Blvd. Marcel-Laurin, Montréal, QC H4R 0B7"

Scenario: User views store list with a registered location that does not have stores nearby or whitout a location
Given I am logged in as "micka" and "1234" 
And I complete two-factor authentication with my "488676"
When I click on the item "Malta Goya" on the home page
Then I should see "No stores within 5km from your location"
