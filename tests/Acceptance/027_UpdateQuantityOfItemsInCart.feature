Feature: Update the quantity of a specefic item in the user's cart

  Scenario: User updates the quantity of milk
    Given I am logged in
    And I complete two-factor authentication with my "545425"
    And I am on "http://localhost/cart?lang=en"
    Then I see "Milk"
    When I click "-"
    Then I see "1"
