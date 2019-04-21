@ecommerces @javascript
Feature: Sorting on Product Listing

  @sorting
  Scenario Outline: : Verify the Sorting of contents
    Given I am on homepage
    And I visit "/clothing"
    And I select "<display>" from "products-pagesize"
    Then I should not see more than "<display>" contents

    Examples:
          |display|
          |3      |
          |6      |
          |9      |










