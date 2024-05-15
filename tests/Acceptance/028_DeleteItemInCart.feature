Feature: Delete item from user's cart
  In order to delete an item from my cart
  As an authenticated user
  I want to be able to click a delete button

  Scenario: Delete item from cart
    Given I am logged in
    And I complete two-factor authentication with my "749739"
    And I am on "http://localhost/cart?lang=en"
    Then I see "Milk"
    When I click element "button[name='deleteButton']"
    Then "Milk" gets deleted

