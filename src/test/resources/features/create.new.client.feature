Feature: Create a new client in Docuport

  @newClient @smoke @db
  Scenario: create new client with DB
    When user login as "advisor"
    And user clicks Client
    And user creates new client
      |Happy               |
      |User                |
      |happyuser410@gmail.com|
      |2407775555          |
      |Group3              |
    Then user validates client is created in DB "happyuser410@gmail.com"
    Then user delete created client in DB "happyuser410@gmail.com"

    @changeNames @smoke @db
    Scenario: change first and last name to new and back to old
      When user login as "advisor"
      Then click on Avatar
      And click Profile button
      When validates First name is "Batch1", Last name is "Group3"
      When change names to "Dominic", "Torretto" in DB
      And validates First name is "Dominic", Last name is "Torretto"
      And change names to "Batch1", "Group3" in DB
      And validates First name is "Batch1", Last name is "Group3"







