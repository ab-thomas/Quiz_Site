Feature: User Authentication

  Background: The user has already signed up
   Given there is a valid user

  Scenario: Existing user logs in
    Given I am in the homepage
    When I fill in username and password
    And I press the "Login" button
    Then I should be logged in

  Scenario: Existing user logs out
    Given I am in the homepage
    When I am logged in
    And I press the "Log out" button
    Then I should be logged out
