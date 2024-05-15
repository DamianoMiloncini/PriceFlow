Feature: Update page language

  Scenario: User changes page language from french to english
    Given I am on "http://localhost/welcome?lang=fr"
    Then I see "Les Meilleur"
    When I click "EN"
    Then I see "The World's"

    Scenario: User changes page language from english to french
    Given I am on "http://localhost/Recipe/recipeDetails/3?lang=fr"
    Then I see "Content"
    When I click "FR"
    Then I see "Contenu"

