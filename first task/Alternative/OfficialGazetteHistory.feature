Feature: Official Gazette History Tab  

  Scenario: User adds an official gazette entry  
    Given the user is on the Official Gazette History tab  
    When the user clicks the "Add" button  
    Then the "Add Official Gazette" page should be displayed  
    When the user enters the following mandatory fields:  
      | Field                        | Value                |  
      | Selected Newspaper Name      | "Newspaper A"       |  
      | Date of Selected Newspaper Change | 1402/01/01      |  
      | Status                       | "Active"            |  
    And the user optionally uploads the following fields:  
      | Field                               | Value                 |  
      | Board Meeting Newspaper              | "Board Newspaper B"  |  
      | Capital Change Newspaper              | "Capital Newspaper C" |  
      | Company Name Change Newspaper         | "Name Change Newspaper D" |  
    Then the "Add" button should be enabled  
    When the user clicks the "Add" button  
    Then a card for the official gazette should be added to the official gazette history table  

  Scenario: User edits or deletes an official gazette card  
    Given there are existing official gazette cards displayed  
    When the user clicks on the "Edit" button for an official gazette card  
    Then the "Edit Official Gazette" page should be displayed  
    When the user clicks on the "Delete" button for an official gazette card  
    Then the official gazette card should be removed from the official gazette history table  

  Scenario: User continues after adding an official gazette entry  
    Given the user has added an official gazette entry  
    When the user clicks the "Continue" button  
    Then the user should be able to proceed to the next tab