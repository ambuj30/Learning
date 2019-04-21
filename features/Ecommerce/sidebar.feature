@ecommerces @javascript
Feature: Sidebar verification

  @sidebar
  Scenario: Verify the sidebar

    Given I am on the homepage
    When I click "Computers"
    And I should see the following under "Computers" in sidebar
    |Desktops|
    |Notebooks|
    |Software |
    And I click "Electronics"
    And I should see the following under "Electronics" in sidebar
    |Camera & photo|
    |Cell phones   |
    |Others        |
    And I click "Apparel"
    And I should see the following under "Apparel" in sidebar
    |Shoes         |
    |Clothing      |
    |Accessories   |





