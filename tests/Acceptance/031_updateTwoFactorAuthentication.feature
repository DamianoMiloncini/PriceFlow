Feature: Update 2 factor Authentication

Scenario: User updates 2 factor Authentication
   Given I am on "http://localhost/User/account"
   When I click "Update Authentication" button 
   And I scan the displayed QR code with my Authenticator app
   And I input the current TOTP code
   Then the system verifies the TOTP code
   And updates the my user account two-factor authentication settings
   And I should see a "Update succesfull" message
