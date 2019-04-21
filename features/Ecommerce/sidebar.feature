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
    Then I should see the following under "Electronics" in sidebar
    |Camera & photo|
    |Cell phones   |
    |Others        |
    And I click "Apparel"
    Then I should see the following under "Apparel" in sidebar
    |Shoes         |
    |Clothing      |
    |Accessories   |
    And I click "Digital downloads"
    Then I should not see any sub link under "Digital downloads"






