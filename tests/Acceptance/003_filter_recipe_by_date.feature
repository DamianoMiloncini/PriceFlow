Feature: View Recipes Sorted by Date
  In order to see the most recent recipes first
  As a user
  I want to see recipes sorted by date when I visit the displayAll page

  Scenario: View recipes sorted by date created
    Given I am on the "/Recipe/displayAll" page
    Then I should see the recipes displayed in the following order
      | Recipe Name   | Date Created          |
      | Fresh Fruit   | 2024-05-13 03:39:46   |
      | Fruit Bowl    | 2024-05-12 16:13:04   |