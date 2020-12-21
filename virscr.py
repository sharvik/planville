from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.remote.webelement import WebElement
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.common.exceptions import TimeoutException
from bs4 import BeautifulSoup
from urllib.request import urlopen as uReq
import time
import pymysql

fidoURL = "https://www.bell.ca/Mobility/Smartphones_and_mobile_internet_devices"

driver = webdriver.Chrome("C:\\webdrivers\\chromedriver.exe")  # Optional argument, if not specified will search path.
page = driver.get(fidoURL);
time.sleep(10)
elementLocator = driver.find_element_by_xpath("//div[@class='rsx-product-grid-view-more row']//button[@type='button']");
elementLocator.click()
time.sleep(10)

soup = BeautifulSoup(driver.page_source, 'html.parser')
planBlocks = soup.find_all('div', class_='smartpay-product')
counter = len(planBlocks)
print(counter)

for planBlock in planBlocks:
    phoneName = planBlock.find("div",{"class":"smartpay-product-name"})
    print(phoneName.text)
    nameOfDevice = phoneName.text
    downpayment = planBlock.find("div",{"class":"downpayment"})
    downAmount = downpayment.text
    print(downpayment.text)
    monthlyPayments = planBlock.find("div", {"class": "monthly-payments"})
    monthlyAmount = monthlyPayments.text
    print(monthlyPayments.text)

HOST = "localhost"
USERNAME = "root"
PASSWORD = "khado"
DATABASE = "providing"

# Save class's base data to the database
# Open database connection
conn =  pymysql.connect(host='localhost', user = 'root', passwd = 'khado', db='providing')
cur = conn.cursor()

db = pymysql.connect(HOST, USERNAME, PASSWORD, DATABASE)
# prepare a cursor object using cursor() method
cursor = db.cursor()
# Prepare SQL query to INSERT a record into the database.
sql = "INSERT INTO classes(nameOfDevice, downAmount, monthlyAmount) VALUES ('{}', '{}', '{}')".format(
    nameOfDevice, downAmount, monthlyAmount, 'NOW()')
try:
    # Execute the SQL command
    cursor.execute(sql)
    # Commit your changes in the database
    db.commit()
except:
    # Rollback in case there is any error
    db.rollback()
    # get the just inserted class id
sql = "SELECT LAST_INSERT_ID()"
try:
    # Execute the SQL command
    cursor.execute(sql)
    # Get the result
    result = cursor.fetchone()
    # Set the class id to the just inserted class
    class_id = result[0]
except:
    # Rollback in case there is any error
    db.rollback()
    # disconnect from server
    db.close()
    # on error set the class_id to -1
    class_id = -1

