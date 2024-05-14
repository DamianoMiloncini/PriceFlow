Feature: User Authentication 

   Scenario: User creates account successfully
   Given I am registered as in as "test1", "1234" , "tester", "bob"
   Then I should be redirected to the setup2fa page

   Scenario: User logs in with valid credentials
   Given I am logged in as "micka" and "1234" 
   And I complete two-factor authentication with my "code"
   Then I should be redirected to the home page


    Scenario: User logs with invalid credentials
    Given I am on "http://localhost/User/login?lang=en"
    When I enter "username1" and "1234" in the login form
    And I click "Login" button
    Then I should stay in the login page

    Scenario: User logs out 
    Given I am logged in as "micka" and "1234" 
    And I complete two-factor authentication with my "code"
    When I log out
    Then I should be redirected to the home page

   Scenario: User updates account
   Given I am logged in as "micka" and "1234" 
   And I complete two-factor authentication with my "code"
   When I update "micka" ,"", "Michaella", "bobby"
   Then I should see the value of last name be "bobby"
