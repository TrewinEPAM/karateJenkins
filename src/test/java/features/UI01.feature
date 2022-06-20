Feature: Test 01

Background:
#Given configure driver = { type: 'chromedriver', executable:'C:\\Users\\Trewin_Chen\\Desktop\\TrewinDocs\\Software\\chromedriver_win32_102.0.5005\\chromedriver.exe' } 
Given configure driver = { type: 'chromedriver', executable: '#(driverpath)'}


Scenario: UI Automation with different browser
Given driver "http://demo.seleniumeasy.com/basic-first-form-demo.html"
And fullscreen()
And delay(2000)
When input("input#user-message", "You got new message")
And screenshot()
And click("//button[@onclick='showInput();']")
And delay(2000)
* def getMessage = text("span#display")
* print getMessage
And match getMessage == 'You got new message'


