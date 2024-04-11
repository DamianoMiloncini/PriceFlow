Feature: User Authentication 

   Scenario: User creates account successfully
   Given I am on "http://localhost/User/creation"
   When I enter "username1" ,"micka", "bob", "Montreal", "1234" in the register page
   And I click "Create Account" button
   Then I should be redirected to the login page

   Scenario: User logs in with valid credentials
   Given I am on "http://localhost/User/login"
   When I enter "username1" and "1234" in the login form
   And I click "Login" button
   Then I should be redirected to the Home Page


    Scenario: User logs with invalid credentials
    Given I am on "http://localhost/User/login"
    When I enter "username1" and "1234" in the login form
    And I click "Login" button
    Then I should stay in the login page

    Scenario: User logs out 
    Given I am on "http://localhost/User/login"
    When I enter "username1" and "1234" in the login form
    When I click "Logout" button
    Then I should be redirected to the login page
    And I should see the login form

   Scenario: User updates account
   Given I am on "http://localhost/User/account"
   And I click "Update Account" button 
   When I enter "username1" ,"michaella", "bobby", "Montreal", "12345"
   And I click the "Save" button
   Then I should see "username1" ,"michaella", "bobby", "Montreal", "12345" as my account details
