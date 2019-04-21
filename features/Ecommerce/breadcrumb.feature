@ecommerces @javascript @breadcrumb
Feature: Verification of breadcrumb

  @breadcrumb
  Scenario: Verify Breadcrumb
    Given I am on the homepage
    Then I should not see the breadcrumb
    When I click "Computers"
    And I should see the breadcrumb as "Home / Computers"
    And I visit "/notebooks"
    And I should see the breadcrumb as "Home / Computers / Notebooks"

