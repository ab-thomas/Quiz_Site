Feature: User Sign up

  Scenario: Enter valid details
    When I go to sign up
    And I fill in the following:
    | user[email]                     |test@test.com|
    | user[username]                  |mr_test      |
    | user[password]                  |password     |
    | user[password_confirmation]     |password     |
    And I press "Sign Up"
    Then I should be added as a user
