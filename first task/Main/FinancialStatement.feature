Feature: Financial Statement Tab  

  Scenario: User adds a financial statement  
    Given the user is on the Financial Statement tab  
    When the user clicks the "Add" button  
    Then the "Add Financial Statement" page should be displayed  
    When the user enters the following mandatory fields:  
      | Field                     | Value         |  
      | Financial Year            | 1402          |  
      | Registered Capital         | 50000000     |  
      | Paid Capital              | 30000000     |  
      | Retained Earnings          | 1000000      |  
      | Operating Profit/Loss     | 500000       |  
      | Net Profit/Loss           | 300000       |  
      | Auditor's Opinion Type    | "Clean"      |  
    Then the "Add" button should be enabled  
    When the user clicks the "Add" button  
    Then a card for the financial statement should be added to the financial statements table  

  Scenario: User edits or deletes a financial statement card  
    Given there are existing financial statement cards displayed  
    When the user clicks on the "Edit" button for a financial statement card  
    Then the "Edit Financial Statement" page should be displayed  
    When the user clicks on the "Delete" button for a financial statement card  
    Then the financial statement card should be removed from the financial statements table  

  Scenario: User continues after adding a financial statement  
    Given the user has added a financial statement  
    When the user clicks the "Continue" button  
    Then the user should be able to proceed to the next tab