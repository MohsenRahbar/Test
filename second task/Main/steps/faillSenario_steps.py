from behave import given, when, then
from selenium import webdriver
import time
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.support.ui import WebDriverWait  
from selenium.webdriver.support import expected_conditions as EC


@given(u'I open the registration page at "http://127.0.0.1:5500/second%20task/AutomationFront/AutomationFront/signUp/signup.html"')
def step_enter_to_page(context):
    context.beas_url = "http://127.0.0.1:5500/second%20task/AutomationFront/AutomationFront"
    context.driver = webdriver.Chrome()
    context.driver.get(f"{context.beas_url}/signUp/signup.html")


@when(u'I fill in the email field with "test@test.com"')
def step_mail(context):
    context.elment_mail = context.driver.find_element('id','email')
    context.time.sleep(.5)
    context.elment_mail.send_keys("test@test.com")
    context.time.sleep(.5)


@when(u'I fill in the firstname field with "firstnametest"')
def step_firstname(context):
    context.elment_firstname = context.driver.find_element('id','firstname')
    context.elment_firstname.send_keys("firstnametest")


@when(u'I fill in the lastname field with "lastnametest"')
def step_lastname(context):
    context.elment_lastname = context.driver.find_element('id','lastname')
    context.elment_lastname.send_keys("lastnametest")


@when(u'I fill in the birthdate field with "2025-01-08"')
def step_birthdate(context):
   context.date_elment = context.driver.find_element(By.ID, "birthdate")
   context.date_elment.clear()  
   context.date_elment.send_keys("2025-01-08")  
   context.time.sleep(1)  


@when(u'I fill in the phone field with "09336880106"')
def step_phone(context):
   context.elment_Phone = context.driver.find_element('id','phone')
   context.elment_Phone.send_keys("09336880106")
   context.time.sleep(.5)


@when(u'I fill in the password field with "125"')
def step_password(context):
    context.elment_password = context.driver.find_element('id','password')
    context.elment_password.send_keys("125")
    context.time.sleep(.5)


@when(u'I fill in the password confirmation field with "123"')
def step_confirmation_password(context):
    context.elment_confirm = context.driver.find_element('id','password-confirm')
    context.elment_confirm.send_keys("123")
    context.time.sleep(.5)


@when(u'I click the submit button')
def step_click_on_button(context):
   context.elmentclick = context.driver.find_element('xpath',"//button[@type='submit']")
   context.elmentclick.click()
   context.time.sleep(1)


@then(u'I should see an alert with the message "Passwords do not match!"')
def step_pass_message(context):
    context.alert = WebDriverWait(context.driver, 10).until(EC.alert_is_present())  
    context. alert_text = context.alert.text  
    assert context.alert_text == "Passwords do not match!"  
    context.time.sleep(.5)


@then(u'I accept the alert')
def step_accept_alert(context):
        context.alert.accept()


@when(u'I clear the phone field')
def step_clear_input_phone(context):
    context.elment_Phone = context.driver.find_element('id','phone')
    context.elment_Phone.clear()
    context.elment_Phone.send_keys("testwords!")
    time.sleep(.5)


@when(u'I fill in the phone field with "testwords!"')
def step_testwords(context):
    
    """I entred letters instead of number"""
    context.elment_Phone.send_keys("testwords!")
    context.time.sleep(.5)


@then(u'I should see an alert with the message "you can`t select word you most enter number"')
def step_word_massege(context):     
    context.alert = WebDriverWait(context.driver, 10).until(EC.alert_is_present())  
     
    context.alert_text = context.alert.text  
 
    assert context.alert_text == "you can`t select word you must enter number "  
    context.time.sleep(.5)
    context.alert.accept()


@given(u'I close the browser')
def step_close_browser(context):
    context.time.sleep(2)
    context.driver.quit()
