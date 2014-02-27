Feature: User logs in

  Scenario: Existing User logs in
    Given I am in the homepage
    When I fill in username and password
    And I press the login button
    Then I should be logged in
