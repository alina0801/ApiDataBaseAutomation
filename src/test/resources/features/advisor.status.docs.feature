Feature: Advisor changes status docs

  @smoke @ui
  Scenario: advisor changes status to done of latest docs
    When user login as a "advisor"
    And user adv clicks "receivedDocs" button
    And user adv clicks "checkBox" button
    And user adv clicks "changeStatus" button
    And user adv clicks "doneRadio" button
    And user adv clicks "saveBtn" button
    Then user validates status is "Done"
#By Davyd and Alina