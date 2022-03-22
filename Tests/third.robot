*** Settings ***
Documentation   this is the first try with robotframework
Library         SeleniumLibrary
Library         Collections
Resource        resources.robot
Test Setup      Open the browser with given url for select fun
Test Teardown   Close browser session


*** Variables ***

*** Test Cases ***
Fill up and select login form
    #Open the browser with given url for select fun
    Fill the login form         ${uname}     ${password}


*** Keywords ***

Fill the login form
    [Arguments]    ${uname}      ${password}
    input text      id:username  ${uname}
    input text      id:password   ${password}
    click element   css:input[value='user']
    wait until element is visible   id:okayBtn
    click button    id:okayBtn
    select from list by value    css:select.form-control    teach
    #click element    id:terms
    select checkbox    id:terms
    checkbox should be selected    id:terms
    click button    id:signInBtn



