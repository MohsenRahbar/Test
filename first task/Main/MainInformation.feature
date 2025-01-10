Feature: Account Information Tab  

  Scenario: User fills in mandatory fields and saves the information  
    Given the user is on the Account Information tab  
    And the following fields are automatically filled:  
      | Field          | Value                 |  
      | National ID    | 1234567890123        |  
      | Company Name   | Example Company       |  
    When the user selects "Legal Entity Type" as "سهامی خاص"  
    And the user enters the following mandatory fields:  
      | Field                          | Value              |  
      | Nationality of Company         | ایرانی             |  
      | Number of Board Members         | 5                  |  
      | Registration No.               | 987654321         |  
      | Registration Date               | 1400/01/01        |  
      | Country of Registration         | ایران              |  
      | Province                       | تهران             |  
      | City                           | تهران             |  
      | Contact Email                  | example@example.com|  
      | Phone                          | 021-12345678      |  
      | Country of Establishment       | ایران              |  
      | Province of Establishment      | تهران             |  
      | City of Establishment          | تهران             |  
      | Postal Code                    | 12345678          |  
      | Address                        | خیابان 1، شماره 2 |  
    Then the "Save" button should be enabled  
    When the user clicks on the "Save" button  
    Then the information should be saved successfully  

  Scenario: User tries to save without filling in mandatory fields  
    Given the user is on the Account Information tab  
    When the user leaves the "Nationality of Company" field empty  
    And the user tries to save the information  
    Then the "Save" button should be disabled  
    And the following message should be displayed:  
      | Message                          |  
      | پر کردن این فیلد الزامی است        |  

  Scenario: User enters invalid postal code  
    Given the user is on the Account Information tab  
    When the user enters an invalid postal code "0000"  
    Then the "Save" button should be disabled  
    And the following message should be displayed:  
      | Message                          |  
      | کدپستی وارد شده وجود ندارد         |  

  Scenario: User selects "Financial Entity" and fills additional fields  
    Given the user is on the Account Information tab  
    When the user selects "نوع شخصیت حقوقی" as "نهاد مالی"  
    Then the following additional fields should be displayed:  
      | Field                          |  
      | Type of Financial Entity       |  
      | Organization Registration No.  |  
      | Organization Registration Date  |