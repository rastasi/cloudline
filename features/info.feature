Feature: Info

  Scenario: Viewing application's About us page
    When I am on the About us page
    Then I should see "About us"

  Scenario: Viewing application's Premium page
    When I am on the Premium page
    Then I should see "Premium"

  Scenario: Viewing application's Contact page
    When I am on the Contact page
    Then I should see "Contact"