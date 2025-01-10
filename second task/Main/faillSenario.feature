Feature: User Registration  

  Scenario: Successful registration with valid inputs and handling validation errors  
    Given I open the registration page at "http://127.0.0.1:5500/second%20task/AutomationFront/AutomationFront/signUp/signup.html"  
    When I fill in the email field with "test@test.com"  
    And I fill in the firstname field with "firstnametest"  
    And I fill in the lastname field with "lastnametest"  
    And I fill in the birthdate field with "2025-01-08"  
    And I fill in the phone field with "09336880106"  
    And I fill in the password field with "125"  
    And I fill in the password confirmation field with "123"  
    And I click the submit button  
    Then I should see an alert with the message "Passwords do not match!"  
    And I accept the alert  

    When I clear the phone field  
    And I fill in the phone field with "testwords!"  
    And I click the submit button  
    Then I should see an alert with the message "you can`t select word you most enter number"  
    And I accept the alert  

    Given I close the browser