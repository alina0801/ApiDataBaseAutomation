Feature: advisor checks 1099 form export

  @1099 @smoke @ui
  Scenario: advisor exports data and validate approving message
    When user login as "advisor"
    And user adv clicks "1099Form"
    Then user adv selects and validates current year
    And user adv clicks "ExportData"
    Then user adv validates approved pop-up is displayed