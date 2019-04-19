@ecommerces
Feature: Search functionality


  @search
  Scenario: Verify the Search functionality
    Given I am on homepage
    And I fill in "Search store" with "Nike"
    And I press "Search"
    And I should see the products which contains the text "floral"

