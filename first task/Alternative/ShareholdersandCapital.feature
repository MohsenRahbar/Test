Feature: Shareholders and Capital Information Tab  

  Scenario: User enters capital information  
    Given the user is on the Shareholders and Capital Information tab  
    When the user enters the following mandatory fields:  
      | Field                    | Value         |  
      | Total Company Capital     | 100000000     |  
      | Nominal Value of Common Shares | 10000     |  
      | Nominal Value of Preferred Shares | 15000   |  
    Then the "Submit" button and "Add Natural and Legal Shareholder" button should be enabled  

  Scenario: User adds a natural shareholder  
    Given the user clicks on the "Natural Shareholder" button  
    Then the "Add Shareholders and Capital Information" page should be displayed  
    When the user searches for the National ID "1234567890"  
    Then the following shareholder information should be displayed:  
      | Field                   | Value                   |  
      | Name                    | teastname               |  
      | National ID             | 1234567890             |  
      | Birth Certificate No.    | 1234567                |  
      | Date of Birth           | 1370/01/01             |  
      | Father's Name           | dadtestname            |  
      | Gender                  | Male                   |  
      | Postal Code             | 123456                 |  
      | Mobile Number            | 09123456789            |  
      | Contact Phone           | 021-12345678           |  
      | Email                   | testexample.test@example.com |  
      | Fax                     | 021-12345679           |  
      | Place of Birth          | Tehran                 |  
      | Place of Issuance       | Tehran                 |  
    When the user enters the following mandatory fields:  
      | Field                     | Value        |  
      | Number of Common Shares     | 50          |  
      | Number of Preferred Shares   | 20          |  
      | Voting Rights Percentage     | 10         |  
      | Description of Beneficial Owner(s) | "John Doe is a sole beneficiary." |  
    Then the "Submit" button should be enabled  
    When the user clicks the "Submit" button  
    Then a card for the natural shareholder should be added to the shareholders and capital information table  

  Scenario: User adds a legal shareholder  
    Given the user clicks on the "Legal Shareholder" button  
    Then the "Add Shareholders and Capital Information" page should be displayed  
    When the user searches for the National ID "0987654321"  
    Then the following shareholder information should be displayed:  
      | Field                     | Value                   |  
      | Registration Number       | 987654321              |  
      | Company Name              | Example Company         |  
      | Registration Date         | 1400/01/01             |  
      | Representative National ID | 1234567890             |  
      | Representative Name       | Jane Smith             |  
    When the user enters the following mandatory fields:  
      | Field                     | Value        |  
      | Number of Common Shares     | 30          |  
      | Number of Preferred Shares   | 10          |  
      | Voting Rights Percentage     | 15          |  
      | Description of Beneficial Owner(s) | "Jane Smith is a representative and beneficial owner." |  
    Then the "Add" button should be enabled  
    When the user clicks the "Add" button  
    Then a card for the legal shareholder should be added to the shareholders and capital information table  

  Scenario: User edits or deletes a shareholder card  
    Given there are existing shareholder cards displayed  
    When the user clicks on the "Edit" button for a shareholder card  
    Then the "Edit Shareholder" page should be displayed  
    When the user clicks on the "Delete" button for a shareholder card  
    Then the shareholder card should be removed from the shareholders and capital information table  

  Scenario: User continues after adding shareholders  
    Given the user has added shareholders and capital information  
    When the user clicks the "Continue" button  
    Then the user should be able to proceed to the next tab