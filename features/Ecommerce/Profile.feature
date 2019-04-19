#@ecommerces @javascript
Feature: Login Process

  Background: Login Process
    Given I am on the homepage
    And I click "Log in"
    And I fill in "Email:" with "ambuj30oct@gmail.com"
    And I fill in "Password:" with "Ambuj1990"
    And I press "Log in"
    And I should see the link "Log out"
    And I click "My account"

  @update_info
  Scenario: Update Customer Info
    Given I am on "/customer/info"
    And I click "Customer info"
    Then I should see the heading "My account - Customer info"
    And I select the radio button "Male"
    And I fill in "First name:" with "Ambuj"
    And I fill in "Last name:" with "Gupta"
    And I select "30" from "DateOfBirthDay"
    And I select "October" from "DateOfBirthMonth"
    And I select "1990" from "DateOfBirthYear"
    And I fill in "Email:" with "ambuj30oct@gmail.com"
    And I fill in "Company name:" with "QED42 Engineering Pvt Ltd"
    When I check "Newsletter:"
    Then I press "Save"


#  =============================================================================

  @validation
  Scenario Outline: Verify Validation on Customer Info
    Given I am on "/customer/info"
    And I click "Customer info"
    Then I should see the heading "My account - Customer info"
    And I select the radio button "Male"
    And I fill in "First name:" with "<Name>"
    And I fill in "Last name:" with "<Lname>"
    And I fill in "Email:" with "<email>"
    Then I press "Save"
    And I should see "<Message>"


  Examples:
    | Name      |  Lname    | email                 |   Message                  |
    | Ambuj     |           | ambuj30oct@gmail.com  |   Last name is required.   |
    |           |  Gupta    | ambuj30oct@gmail.com  |   First name is required.  |
    | Ambuj     |  Gupta    |                       |   Email is required.       |
















