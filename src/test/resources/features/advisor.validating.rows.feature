Feature: Checking Rows Per Page functionality

  @rows @smoke @ui
  Scenario: Validate Rows Per Page for different user roles
    Given user login as "advisor"
    When user click on Leads
    Then user validate that Rows Per Page defaults to 10
    When user change Rows Per Page to 5
    When user click on "Users"
    Then user validate that Rows per Page defaults to 10
    When user change Rows Per Page to 5
    Then user validate that it shows only 5
    #By Ramiz