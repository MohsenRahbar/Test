Feature: Representative Information Tab  

  Scenario: User views representative information  
    Given the user is on the Representative Information tab  
    Then the following representative information should be displayed:  
      | Field            | Value                  |  
      | National ID      | 1234567890            |  
      | Full Name        | Mohsen Rahbar              |  
      | Birth Certificate No. | 1234567            |  
      | Father's Name    | Mohsen             |  
      | Date of Birth    | 1370/01/01            |  
      | Mobile Number     | 09123456789           |  
      | Email            | mohsen.rahbar@example.com   |  

  Scenario: User changes representative information  
    Given the user is on the Representative Information tab  
    When the user clicks on the "Change Representative" button  
    And enters "کد ملی" as "0087654321"  
    And clicks on the "Check" button  
    Then the following representative information should be displayed:  
      | Field            | Value                  |  
      | National ID      | 0987654321            |  
      | Full Name        | Mohsen Rahbar           |  
      | Birth Certificate No. | 7654321            |  
      | Father's Name    | gasem         |  
      | Date of Birth    | 1375/05/05            |  
      | Mobile Number     | 09109876543           |  
      | Email            |  mohsen.rahbar@example.com  |  
  
  Scenario: User continues to register a new representative  
    Given the user is on the Representative Information tab  
    When the user clicks on the "Continue" button  
    Then a verification code should be sent to the mobile number "09109876543"  
    And the user is prompted to enter the verification code to register the new representative