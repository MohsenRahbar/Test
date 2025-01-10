Feature: User Authentication  

  Scenario: User signs up successfully  
    Given the user is on the sign-up page  
    When the user enters their email as "test@test.com"  
    And the user enters their first name as "firstnametest"  
    And the user enters their last name as "lastnametest"  
    And the user enters their birthdate as "2025-01-08"  
    And the user enters their phone number as "09336880106"  
    And the user enters their password as "123"  
    And the user confirms their password as "123"  
    And the user clicks on the "Sign Up" button  
    Then the user should see an alert with the message "Sign up successful!"  

  Scenario: User logs in successfully  
    Given the user is on the login page  
    When the user enters their email as "test@test.com"  
    And the user enters their password as "123"  
    And the user clicks on the "Log In" button  
    Then the user should be redirected to the dashboard  