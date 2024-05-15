Feature: Update page language

  Scenario: User changes page language from french to english
    Given I am on "http://localhost/welcome?lang=fr"
    Then I see "Les Meilleur"
    When I click "EN"
    Then I see "The World's"

