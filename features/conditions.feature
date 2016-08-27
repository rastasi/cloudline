Feature: Conditions

  Background:
    Given I am a user with an email "test@cloudline.hu" and password "cloudline12345"
    Given I am logged in with an email "test@cloudline.hu" and password "cloudline12345"
    Given I have a site named "Google" with url "google.com" for user "test@cloudline.hu"

  Scenario: Create condition
    When I am on the site page named "Google"
    And I click link "New condition"
    And I fill in "condition_value" with "Google.hu"
    And I click button "Save condition"
    Then I should see "Google.hu"