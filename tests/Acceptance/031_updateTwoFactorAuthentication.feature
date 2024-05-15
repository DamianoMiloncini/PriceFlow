Feature: Update 2 factor Authentication

Scenario: User updates 2 factor Authentication
   Given I am logged in as "micka" and "1234" 
   And I complete two-factor authentication with my "527838"
   When click on the "Update 2FA secret" link in my account page 
   Then I should enter my password "1234" and my secret "527838"
   And I should be redirected to the "update2fa" page
