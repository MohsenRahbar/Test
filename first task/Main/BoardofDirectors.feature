Feature: Board of Directors Tab  

  Scenario: User adds a natural person to the board of directors  
    Given the user is on the Board of Directors tab  
    When the user clicks on the "Natural Person" button  
    Then the "Add Board Member" page should be displayed  
    When the user enters the mandatory field "Position"  
    And searches for the National ID "1234567890"  
    Then the following member information should be displayed:  
      | Field                   | Value                  |  
      | Name                    | testname              |  
      | National ID             | 1234567890            |  
      | Birth Certificate No.    | 1234567               |  
      | Date of Birth           | 1370/01/01            |  
      | Father's Name           | dadtestname            |  
      | Gender                  | Male                  |  
      | Postal Code             | 123456                |  
      | Mobile Number            | 09123456789           |  
      | Contact Phone           | 021-12345678          |  
      | Email                   | test.test@example.com   |  
      | Fax                     | 021-12345679          |  
      | Place of Birth          | Tehran                |  
      | Place of Issuance       | Tehran                |  
    And the "Add" button should be enabled  
    When the user optionally enters "Start Date" and "End Date"  
    And clicks the "Add" button  
    Then a card for the board member should be added to the board members table  

  Scenario: User adds a legal person to the board of directors  
    Given the user is on the Board of Directors tab  
    When the user clicks on the "Legal Person" button  
    Then the "Add Board Member" page should be displayed  
    When the user enters the mandatory field "Position"  
    And searches for the National ID "0987654321"  
    Then the following member information should be displayed:  
      | Field                   | Value                  |  
      | Registration Number     | 987654321             |  
      | Company Name            | Example Company        |  
      | Registration Date       | 1400/01/01            |  
      | Representative National ID | 1234567890          |  
      | Representative Name     | test.test@example.com |              |  
    And the "Add" button should be enabled  
    When the user optionally enters "Start Date" and "End Date"  
    And clicks the "Add" button  
    Then a card for the legal board member should be added to the board members table  

  Scenario: User tries to add a board member without filling mandatory fields  
    Given the user is on the "Add Board Member" page  
    When the user leaves the "Position" field empty  
    And tries to click the "Add" button  
    Then the "Add" button should be disabled  
    And the following message should be displayed:  
      | Message            |  
      | پر کردن این فیلد الزامی است ... |  

  Scenario: User edits or deletes a board member  
    Given there are existing board member cards displayed  
    When the user clicks on the "Edit" button for a board member  
    Then the "Edit Board Member" page should be displayed  
    When the user clicks on the "Delete" button for a board member  
    Then the board member should be removed from the board members table  

  Scenario: User continues after adding board members  
    Given the user has added members to the board of directors  
    When the user clicks the "Continue" button  
    Then the user should be able to proceed to the next tab