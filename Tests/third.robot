*** Settings ***
Documentation   this is the first try with robotframework
Library         SeleniumLibrary
Library         Collections
Resource        resources.robot
Test Setup      Open the browser with given url for select fun
Test Teardown   Close browser session


*** Variables ***

*** Test Cases ***
Validate Unsuccessful login
    Open the browser with given url for select fun
    Fill the login form         ${username}     ${password}


*** Keywords ***

Fill the login form
    [Arguments]    ${username}      ${password}
    input text      id:username  ${username}
    input text      id:password   ${password}
    click button    id:signInBtn


