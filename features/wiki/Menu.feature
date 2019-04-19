@wiki
Feature: Menu Links

  @Links
  Scenario: To verify the Menu links
    Given I am on the homepage
    When I click "Main page"
    Then I should be on "https://en.wikipedia.org/wiki/Main_Page"


