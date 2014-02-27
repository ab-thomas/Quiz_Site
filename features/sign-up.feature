Feature: User Sign up

  Scenario: Enter valid details
    When I go to sign up
    Then I should be added as a user
    And I should be logged in

  Scenario: Signing up with existing username
    Given desired username is taken
    When I go to sign up
    Then I should see "Username has already been taken"
