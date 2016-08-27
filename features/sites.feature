Feature: Sites

  Background:
    Given I am a user with an email "test@cloudline.hu" and password "cloudline12345"
    Given I am logged in with an email "test@cloudline.hu" and password "cloudline12345"

  Scenario: List sites
    When I am on the Sites page
    Then I should see "Sites"

  Scenario: Create site
    When I am on the New site page
    And I fill in "site_name" with "Google"
    And I fill in "site_description" with "Google site"
    And I fill in "site_url" with "google.com"
    And I click button "Save site"
    Then I should see "Details of Google"