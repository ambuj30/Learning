@wiki
Feature: Wiki Search

  Scenario: To verify the search of wiki
    Given I am on the homepage
    When I fill in "searchInput" with "QED"
    And I press "searchButton"
    Then I should see the heading "QED"