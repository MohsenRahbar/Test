from selenium import webdriver
import time
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.support.ui import WebDriverWait  
from selenium.webdriver.support import expected_conditions as EC


beas_url = "http://127.0.0.1:5500/second%20task/AutomationFront/AutomationFront"

driver = webdriver.Chrome()
driver.get(f"{beas_url}/signUp/signup.html")

elment_mail = driver.find_element('id','email')
time.sleep(.5)
elment_mail.send_keys("test@test.com")
time.sleep(.5)
elment_firstname = driver.find_element('id','firstname')
elment_firstname.send_keys("firstnametest")
time.sleep(1)
elment_lastname = driver.find_element('id','lastname')
elment_lastname.send_keys("lastnametest")
time.sleep(1)
date_elment = driver.find_element(By.ID, "birthdate")
date_elment.clear()  
date_elment.send_keys("2025-01-08")  
time.sleep(1)  
elment_Phone = driver.find_element('id','phone')
elment_Phone.send_keys("09336880106")
time.sleep(.5)

elment_password = driver.find_element('id','password')
elment_password.send_keys("125")
time.sleep(.5)
elment_confirm = driver.find_element('id','password-confirm')
elment_confirm.send_keys("123")
time.sleep(.5)
elmentclick = driver.find_element('xpath',"//button[@type='submit']")
elmentclick.click()
time.sleep(1)
try:  
    alert = WebDriverWait(driver, 10).until(EC.alert_is_present())  
     
    alert_text = alert.text  
 
    assert alert_text == "Passwords do not match!"  
    time.sleep(.5)
    alert.accept()

except Exception as e:  
    print("Exsist onece problem", e)  
finally:  
    pass

time.sleep(3)
"""Example for enter number"""
elment_Phone = driver.find_element('id','phone')
elment_Phone.clear()
elment_Phone.send_keys("testwords!")
time.sleep(.5)
try:  
    alert = WebDriverWait(driver, 10).until(EC.alert_is_present())  
     
    alert_text = alert.text  
 
    assert alert_text == "you can`t select word you must enter number "  
    time.sleep(.5)
    alert.accept()

except Exception as e:  
    print("I find bug ", e)  
finally:  
    pass

time.sleep(2)

driver.quit()
