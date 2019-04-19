
@wiki
Feature: Login Process

  @Login
  Scenario: To verify the Login with valid credentials
    Given I am on the homepage
    When I click "Log in"
    Then I should see "Log in"
    And I fill in "Username" with "Ambuj30oct"
    And I fill in "Password" with "Ambuj1990"
    Then I press "Log in"
    And I should see "Log out"

  @validation
  Scenario: To verify the Validation on Login page
    Given I am on the homepage
    When I click "Log in"
    Then I should see "Log in"
    And I fill in "Username" with "Ambuj"
    And I fill in "Password" with "Ambuj1990"
    Then I press "Log in"
    And I should see "Incorrect username or password entered. Please try again."








