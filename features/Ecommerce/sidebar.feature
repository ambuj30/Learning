@ecommerces @javascript
Feature: Sidebar verification

  @sidebar
  Scenario: Verify the sidebar
    Given I am on the homepage
    When I click "Computers"
    And I should see the following sublinks "Desktops  Notebooks Software" under ".last .sublist li a"
