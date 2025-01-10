"""Atuomation Testing for Sign up / Login"""
from selenium import webdriver
import time
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.support.ui import WebDriverWait  
from selenium.webdriver.support import expected_conditions as EC

# Scenario user want to enter to web site
beas_url = "http://127.0.0.1:5500/second%20task/AutomationFront/AutomationFront"

driver = webdriver.Chrome()
driver.get(f"{beas_url}/dashboard/dashboard.html")
driver.implicitly_wait(10)
time.sleep(1)
# Senario user want to sign up
signup_link = driver.find_element(By.XPATH, "//a[text()='Sign Up']")  
signup_link.click()  
time.sleep(5)  
# The user enters their email as test@test.com
elment_mail = driver.find_element('id','email')
time.sleep(.5)
elment_mail.send_keys("test@test.com")
time.sleep(.5)
# The user enters their first name as firstnametest
elment_firstname = driver.find_element('id','firstname')
elment_firstname.send_keys("firstnametest")
time.sleep(1)
# The user enters their first name as lastname
elment_lastname = driver.find_element('id','lastname')
elment_lastname.send_keys("lastnametest")
time.sleep(1)
# The user enters their birthdate as 2025-01-08
date_elment = driver.find_element(By.ID, "birthdate")
date_elment.clear()  
date_elment.send_keys("2025-01-08")  
time.sleep(1)  
# The user enters their phone number as "09336880106"
elment_Phone = driver.find_element('id','phone')
elment_Phone.send_keys("09336880106")
time.sleep(.5)
# The user enters their password as "123"
elment_password = driver.find_element('id','password')
elment_password.send_keys("123")
time.sleep(.5)
# The user confirms their password as "123
elment_confirm = driver.find_element('id','password-confirm')
elment_confirm.send_keys("123")
time.sleep(.5)
# The user clicks on the "Sign Up" button
elmentclick = driver.find_element('xpath',"//button[@type='submit']")
elmentclick.click()
time.sleep(1)
# The user should see an alert with the message "Sign up successful!
try:  
    alert = WebDriverWait(driver, 10).until(EC.alert_is_present())  
     
    alert_text = alert.text  
 
    assert alert_text == "Sign up successful!"  
    time.sleep(.5)
    alert.accept()

except Exception as e:  
    print("Exsist onec problem", e)  
finally:  
    pass


time.sleep(3)

"""Login Scenario:"""


elment_login_mail = driver.find_element('id','login-email')
time.sleep(.5)
elment_login_mail.send_keys("test@test.com")
elment_login_password = driver.find_element('id','login-password')
time.sleep(.5)
elment_login_password.send_keys("123")
time.sleep(.5)
elmentclick = driver.find_element('xpath',"//button[text()='Log In']")
elmentclick.click()
time.sleep(3)
#close driver
driver.quit()
