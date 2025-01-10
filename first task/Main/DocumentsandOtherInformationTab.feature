Feature: Documents and Other Information Tab  

  Scenario: User enters required documents and information  
    Given the user is on the Documents and Other Information tab  
    When the user enters the following mandatory fields:  
      | Field                                      | Value                    |  
      | Main Legal Auditor                         | "Mohsen Rahbar"            |  
      | Main Accountant                            | "test test"              |  
      | Alternate Legal Auditor                    | "ali akbary"          |  
      | Alternate Accountant                       | "Emily akbary"            |  
      | Activity Subject in Articles of Association | "IT Services"           |  
      | Main Activity Pursued                      | "Software Development"   |  
      | Important Information and Explanations     | "This company focuses on..." |  
      | Audited Financial Statements of Last Two Years | "Statement 1.pdf, Statement 2.pdf" |  
      | Establishment Announcement                  | "Announcement.pdf"       |  
      | Articles of Association or Company Agreement | "Articles.pdf"          |  
    Then the "Save and Continue" button should be enabled  
    
  Scenario: User uploads optional documents  
    Given the user is on the Documents and Other Information tab  
    When the user uploads the following optional documents:  
      | Field                                      | Value                    |  
      | Consolidated Audited Financial Statements   | "Consolidated_Statement.pdf" |  
      | Auditor Confirmation Regarding Financial Statement Conditions | "Confirmation.pdf"   |  
      | Other                                      | "Other_Info.pdf"        |  
    Then the optional documents should be uploaded successfully  

  Scenario: User tries to save without filling mandatory fields  
    Given the user is on the Documents and Other Information tab  
    When the user ignores the mandatory fields  
    Then the "Save and Continue" button should be disabled  
    And the following messages should be displayed under the empty fields:  
      | Message                                    |  
      | "پر کردن این فیلد الزامی است"            |  
      | "حجم فایل شما بیشتر از 5 مگابایت می باشد" |  
      | "بارگذاری ناموفق. مجدد تلاش کنید"       |  

  Scenario: User clicks save and continue after entering all required information  
    Given the user has filled in all mandatory fields and uploaded optional documents  
    When the user clicks the "Save and Continue" button  
    Then the user should be moved to the next tab