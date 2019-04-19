@ecommerces @javascript
Feature: Verification of breadcrumb

  @breadcrumb
  Scenario: Verify Breadcrumb
    Given I am on the homepage
    When I click "Computers"
    And I should see the breadcrumb as "Home / Computers"
    And I visit "/notebooks"
    And I should see the breadcrumb as "Home / Computers / Notebooks"

