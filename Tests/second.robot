*** Settings ***
Documentation   this is the first try with robotframework
Library         SeleniumLibrary
Resource        resources.robot
Test Setup      Open the browser with given url
Test Teardown   Close browser session


*** Variables ***
${error_message_text}            css:.error-message-container
${inventory_title_text}          css:.title
*** Test Cases ***
Validate Unsuccessful login
    Fill the login form         ${username}     ${invalid_password}
    Wait until element is located in the page    ${error_message_text}
    Verify error message is correct

Validate successful login
    Fill the login form    ${username}  ${valid_password}
    Wait until element is located in the page       ${inventory_title_text}
    Verify Card title in the inventory page

*** Keywords ***
Fill the login form
    [Arguments]    ${username}    ${password}
    input text      id:user-name  ${username}
    input password  id:password   ${password}
    click button    id:login-button


Wait until element is located in the page
    [Arguments]    ${element}
    wait until element is visible    ${element}

Verify error message is correct
    ${error_text}=  get text      ${error_message_text}
    should be equal as strings    ${error_text}     Epic sadface: Username and password do not match any user in this service
    element text should be        ${error_message_text}     Epic sadface: Username and password do not match any user in this service

Verify Card title in the inventory page
    @{itemlist}=    create list     Sauce Labs Backpack     Sauce Labs Bike Light       Sauce Labs Bolt T-Shirt     Sauce Labs Fleece Jacket    Sauce Labs Onesie   Test.allTheThings() T-Shirt (Red)
    ${elements}=    get webelements    css:.inventory_item_name
    FOR    ${element}   IN    @{elements}
        log    ${element.text}
    END