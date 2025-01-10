Feature: Additional Information Tab  

  Scenario: User answers question 1 about affiliation with other brokerage or financial institution  
    Given the user is on the Additional Information tab  
    When the user selects "Yes" for the question "آیا متقاضی و اشخاص وابسته به آن، سهامدار کارگزاری دیگری یا نهاد مالی دیگری می باشند؟"  
    Then the "Add" button should be enabled  
    When the user clicks the "Add" button  
    Then the "Add Shareholder in Another Brokerage" page should be displayed  
    When the user enters the following mandatory fields:  
      | Field                                             | Value                     |  
      | Shareholder Name in the Brokerage or Financial Institution | "Ali Reza"              |  
      | Type of Affiliation                                | "Controlling Person"     |  
      | National ID                                       | "1234567890"             |  
      | Brokerage/Financial Institution                    | "Brokerage ABC"          |  
      | Ownership Percentage                               | "25"                      |  
    Then the "Register" button should be enabled  

  Scenario: User answers question 2 about being a major shareholder of suspended brokerage  
    Given the user is on the Additional Information tab  
    When the user selects "Yes" for the question "آیا متقاضی جزء سهامداران عمده کارگزاری لغو مجوز یا تعلیق فعالیت و یا محدود در فعالیت شده در 5 سال گذشته می باشد؟"  
    Then the "Add" button should be enabled  
    When the user clicks the "Add" button  
    Then the "Add Shareholder" page should be displayed  
    When the user enters the following mandatory fields:  
      | Field                      | Value                     |  
      | Brokerage Name            | "Brokerage XYZ"          |  
      | Ownership Percentage       | "15"                      |  
    Then the "Register" button should be enabled  

  Scenario: User answers question 3 about board membership  
    Given the user is on the Additional Information tab  
    When the user selects "Yes" for the question "آیا در حال حاضر متقاضی یا اشخاص وابسته به آن عضو هیئت مدیره شرکت‌های کارگزاری می باشند؟"  
    Then the "Add" button should be enabled  
    When the user clicks the "Add" button  
    Then the "Add Board Member" page should be displayed  
    When the user enters the following mandatory fields:  
      | Field                | Value                          |  
      | Brokerage Name      | "Brokerage DEF"                |  
      | Position            | "مدیرعامل"                     |  
      | Representing        | " خود"                         |  
      | From Date           | "1401/01/01"                  |  
      | To Date             | "1402/01/01"                  |  
    Then the "Register" button should be enabled  

  Scenario: User answers question 4 about changes in controlling shareholders  
    Given the user is on the Additional Information tab  
    When the user selects "Yes" for the question "آیا در طی یک سال گذشته سهامداران کنترلکننده متقاضی تغییر داشته اند؟"  
    Then the "Add" button should be enabled  
    When the user clicks the "Add" button  
    Then the "Debts Incurred" page should be displayed  
    When the user enters the following mandatory fields:  
      | Field                     | Value                       |  
      | Previous Shareholders    | "Rezaei"                   |  
      | Ownership Percentage      | "30"                       |  
      | Current Shareholders      | "Mohammadi"                |  
      | Date of Shareholding      | "1402/01/01"               |  
    Then the "Register" button should be enabled  

  Scenario: User answers question 5 about registration as financial entity  
    Given the user is on the Additional Information tab  
    When the user selects "Yes" for the question "آیا متقاضی مشمول ثبت به عنوان نهاد مالی نزد سازمان میباشد؟"  
    Then the "Add" button should be enabled  
    When the user clicks the "Add" button  
    Then the "Registration as Financial Entity" page should be displayed  
    When the user enters the following mandatory fields:  
      | Field                          | Value                        |  
      | Type of Financial Entity       | "کارگزاری"                   |  
      | Registration Number            | "987654321"                 |  
      | Registration Date              | "1401/01/01"                |  
    Then the "Register" button should be enabled  

  Scenario: User answers question 6 about debts to the banking network  
    Given the user is on the Additional Information tab  
    When the user selects "Yes" for the question ""آیا متقاضی دارای بدهی معوق به شبکه بانکی میباشد؟
    And  the user selects "افزودن" for active "ثبت و انصراف" button .
    Then  user click on "ذخیره".