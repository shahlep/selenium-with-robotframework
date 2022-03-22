*** Settings ***
Documentation    common stuff
Library          SeleniumLibrary

*** Variables ***
${username}             standard_user
${invalid_password}     secret
${valid_password}       secret_sauce
${url}                  https://www.saucedemo.com/
#${url_select}           https://rahulshettyacademy.com/loginpagePractise
${uname}                 rahulshettyacademy
${password}             learning

*** Keywords ***
Open the browser with given url
    create webdriver    Chrome  executable_path=/Users/shah/PycharmProjects/pythonProject/rf-selenium/drivers/chromedriver
    go to    ${url}

Close browser session
    close browser

Open the browser with given url for select fun
    create webdriver    Chrome  executable_path=/Users/shah/PycharmProjects/pythonProject/rf-selenium/drivers/chromedriver
    go to               https://rahulshettyacademy.com/loginpagePractise/