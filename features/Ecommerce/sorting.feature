@ecommerces @javascript
Feature: Sorting on Product Listing


  @sorting
  Scenario: Verify the Sorting of contents
    Given I am on homepage
    And I visit "/clothing"
    And I select "3" from "products-pagesize"
    Then I should not see more than "3" contents







