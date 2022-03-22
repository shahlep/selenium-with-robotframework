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
    Open the browser with given url
    Fill the login form


*** Keywords ***

Fill the login form
    input text      id:user-name  ${username}
    input text      id:password   ${invalid_password}
    click button    id:login-button


