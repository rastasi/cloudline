Feature: Users

  Scenario: Sign up
    When I am on the Sign up page
    And I fill in "user_email" with "test@cloudline.hu"
    And I fill in "user_password" with "cloudline12345"
    And I fill in "user_password_confirmation" with "cloudline12345"
    And I press "Sign up"
    Then I should see "Sites"