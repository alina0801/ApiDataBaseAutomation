Feature: Homepage validation

  @tina @smoke @ui
  Scenario: Homepage functions validation
    Given user is on the Docuport login page
    Then user validate "Login" text is displayed
    When user enter credentials
      | username | b1g1_client@gmail.com |
      | password | Group1|
    And user validate "Choose account" text is displayed
    And user clicks "home" button
    And user clicks "invitations" button
    And user validate all assertions