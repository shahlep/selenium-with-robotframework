*** Settings ***
Documentation   this is the first try with robotframework
Library    SeleniumLibrary
Test Teardown       Close Browser

*** Variables ***
${error_message_text}            css:.error-message-container
*** Test Cases ***
Validate Unsuccessful login
    Open the browser with given url
    Fill the login form
    Wait until it checks and display error message
    Verify error message is correct

*** Keywords ***
Open the browser with given url
    create webdriver    Chrome  executable_path=/Users/shah/PycharmProjects/pythonProject/rf-selenium/drivers/chromedriver
    go to    https://www.saucedemo.com/

Fill the login form
    input text      id:user-name  standard_user
    input password  id:password   secret
    click button    id:login-button


Wait until it checks and display error message
    wait until element is visible    ${error_message_text}

Verify error message is correct
    ${error_text}=  get text    ${error_message_text}
    should be equal as strings    ${error_text}     Epic sadface: Username and password do not match any user in this service
