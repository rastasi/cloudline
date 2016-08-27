Feature: Users

  Scenario: Sign up
    When I am on the Sign up page
    And I fill in "user_email" with "test@cloudline.hu"
    And I fill in "user_password" with "cloudline12345"
    And I fill in "user_password_confirmation" with "cloudline12345"
    And I click button "Sign up"
    Then I should see "Sites"

  Scenario: Sign in
    Given I am a user with an email "test@cloudline.hu" and password "cloudline12345"
    When I am on the Sign in page
    And I fill in "user_email" with "test@cloudline.hu"
    And I fill in "user_password" with "cloudline12345"
    And I click button "Log in"
    Then I should see "Sites"