from behave import given, when, then
from selenium import webdriver
import time
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.support.ui import WebDriverWait  
from selenium.webdriver.support import expected_conditions as EC


@given(u'the user is on the sign-up page')
def step_enter_to_webpage(context):
    context.beas_url = "http://127.0.0.1:5500/second%20task/AutomationFront/AutomationFront"

    context.driver = webdriver.Chrome()
    context.driver.get(f"{context.beas_url}signUp/signup.html")
    context.driver.implicitly_wait(10)
    context.time.sleep(1)
    context.signup_link = context.driver.find_element(By.XPATH, "//a[text()='Sign Up']")  
    context.signup_link.click()  
    context.time.sleep(5)  


@when(u'the user enters their email as "test@test.com"')
def step_enter_mail(context):
    context.elment_mail = context.driver.find_element('id','email')
    context.time.sleep(.5)
    context.elment_mail.send_keys("test@test.com")
    context.time.sleep(.5)


@when(u'the user enters their first name as "firstnametest"')
def step_enter_firstname(context):
    context.elment_firstname = context.driver.find_element('id','firstname')
    context.elment_firstname.send_keys("firstnametest")
    time.sleep(1)


@when(u'the user enters their last name as "lastnametest"')
def step_enter_lastname(context):
    context.elment_lastname = context.driver.find_element('id','lastname')
    context.elment_lastname.send_keys("lastnametest")
    time.sleep(1)

@when(u'the user enters their birthdate as "2025-01-08"')
def step_enter_birtdeate(context):
    context.date_elment = context.driver.find_element(By.ID, "birthdate")
    context.date_elment.clear()  
    context.date_elment.send_keys("2025-01-08")  
    time.sleep(1)  


@when(u'the user enters their phone number as "09336880106"')
def step_enter_phone(context):
    context.elment_Phone = context.driver.find_element('id','phone')
    context.elment_Phone.send_keys("09336880106")
    context.time.sleep(.5)


@when(u'the user enters their password as "123"')
def step_enter_password(context):
    context.elment_password = context.driver.find_element('id','password')
    context.elment_password.send_keys("123")
    context.time.sleep(.5)


@when(u'the user confirms their password as "123"')
def step_confirm_password(context):
    context.elment_confirm = context.driver.find_element('id','password-confirm')
    context.elment_confirm.send_keys("123")
    context.time.sleep(.5)


@when(u'the user clicks on the "Sign Up" button')
def step_click_button(context):
    context.elmentclick = context.driver.find_element('xpath',"//button[@type='submit']")
    context.elmentclick.click()
    context.time.sleep(1)


@then(u'the user should see an alert with the message "Sign up successful!"')
def step_message(context):
    context.alert = WebDriverWait(context.driver, 10).until(EC.alert_is_present())  
    context.alert_text = context.alert.text  
    assert context.alert_text == "Sign up successful!"  
    context.time.sleep(.5)
    context.alert.accept()

"""Login scenario"""

@given(u'the user is on the login page')
def step_enter_login_page(context):
    raise NotImplementedError(u'STEP: Given the user is on the login page')


@when(u'the user clicks on the "Log In" button')
def step_login_button(context):
    context.elment_login_mail = context.driver.find_element('id','login-email')
    context.context.time.sleep(.5)
    context.elment_login_mail.send_keys("test@test.com")
    context.elment_login_password = context.driver.find_element('id','login-password')
    context.time.sleep(.5)
    context.elment_login_password.send_keys("123")
    context.time.sleep(.5)
    elmentclick = context.driver.find_element('xpath',"//button[text()='Log In']")
    elmentclick.click()
    time.sleep(3)


@then(u'the user should be redirected to the dashboard')
def step_ending(context):
    context.driver.quit()
    raise NotImplementedError(u'STEP: Then the user should be redirected to the dashboard')
