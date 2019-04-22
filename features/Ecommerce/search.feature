@ecommerces @javascript @search
Feature: Search functionality


  @invalid_search
  Scenario: Verify the Search functionality with invalid input
    Given I am on homepage
    And I fill in "Search store" with "ABC"
    And I press "Search"
    And I should see "No products were found that matched your criteria."

  @valid_search
  Scenario: Verify the Search functionality with valid input
    Given I am on homepage
    And I fill in "Search store" with "Nike"
    And I press "Search"
    And I should see the products which contains the text "Nike"

  @advanced_search
  Scenario: Verify the Advanced Search functionality
    Given I am on homepage
    And I fill in "Search store" with "Nike"
    And I press "Search"
    And I check the box "Advanced search"



