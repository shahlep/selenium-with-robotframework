*** Settings ***
Documentation    common stuff
Library          SeleniumLibrary

*** Variables ***
${username}             standard_user
${invalid_password}     secret
${url}                  https://www.saucedemo.com/

*** Keywords ***
Open the browser with given url
    create webdriver    Chrome  executable_path=/Users/shah/PycharmProjects/pythonProject/rf-selenium/drivers/chromedriver
    go to    ${url}

Close browser session
    close browser