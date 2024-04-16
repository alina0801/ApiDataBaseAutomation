Feature: Email
  @Email @smoke @ui
  Scenario: Send email
    Given login as "advisor"
    Then click on Avatar
    Then Click send invitation
    Then add email "BobM12@gmail.com"
    Then click send