@ecommerces @javascript @breadcrumb @aftersuite
Feature: Verification of breadcrumb

  @breadcrumb
  Scenario: Verify Breadcrumb
    Given I am on the homepage
    Then I should not see the breadcrumb
    When I click "Computers"
    Then I should see the breadcrumb as "Home /Computers"
    When I visit "/notebooks"
    Then I should see the breadcrumb as "Home / Computers /Notebooks"

