@ecommerces @javascript
Feature: Sidebar verification

  @sidebar
  Scenario: Verify the sidebar
    Given I am on the homepage
    When I click "Computers"
    And I should see the following in ".last .sublist li a" region
    |Desktops|
    |Notebooks|
    |Software |
    And I click "Electronics"
    And I should see the following in ".last .sublist li a" region
    |Camera & photo|
    |Cell phones   |
    |Others        |
    And I click "Apparel"
    And I should see the following in ".last .sublist li a" region
    |Shoes         |
    |Clothing      |
    |Accessories   |




