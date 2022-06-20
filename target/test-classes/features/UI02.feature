Feature: Test 02

Scenario: UI Automation with different browser
#Given configure driver = { type: 'chromedriver', executable: '#(driverpath)'}
Given configure driver = { type: 'chrome'}
And driver "https://the-internet.herokuapp.com/upload"
And fullscreen()
And driver.inputFile('#file-upload','file:C://Users//Trewin_Chen//Desktop//TrewinDocs//DemoSite_Credential.txt')
And click('#file-submit')
And delay(2000)


#Scenario: Drag and Drop objects
#Given configure driver = { type: 'chrome'}
##And highlight('#column-a')
##And mouse().move('#column-a').down().move('#column-b').up() - bug unable to work
#
##using javascript
#And driver "https://the-internet.herokuapp.com/drag_and_drop"
#And fullscreen()
#And script(" var myDragEvent = new Event('dragstart'); myDragEvent.dataTransfer = new DataTransfer()")
#And waitFor('#column-a').script("_.dispatchEvent(myDragEvent)")
#And delay(2000)
#And script("var myDropEvent = new Event('drop'); myDropEvent.dataTransfer = myDragEvent.dataTransfer")
#And script('#column-b', "_.dispatchEvent(myDropEvent)")
#And screenshot()
##And driver.inputFile('#file-upload','file:C://Users//Trewin_Chen//Desktop//TrewinDocs//DemoSite_Credential.txt')
##And click('#file-submit')
#And delay(2000)