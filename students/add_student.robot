*** Settings ***
Documentation       Search Book Functionality
Library             SeleniumLibrary
Resource            ${CURDIR}${/}..\\resource/resource.robot


*** Variables ***


*** Test Cases ***
Verify Add New Student Function
    Open Web 
    Login Into System    ${UserName}    ${Password}
    Page Login Success
    Maximize Browser Window
    # insert student An Vong    s354803
    Add New Student    An Vong    s354803 
    Go To    http://127.0.0.1:8000/viewstudents/
    Page Should Contain    An Vong
    Page Should Contain    s354803
    Capture Page Screenshot
    Close Browser

Verify Add Second Student Function
    Open Web 
    Login Into System    ${UserName}    ${Password}
    Page Login Success
    Maximize Browser Window
    # insert student An Vong    s354803
    Add New Student    MD Al Admin    S361035 
    Go To    http://127.0.0.1:8000/viewstudents/
    Page Should Contain    MD Al Admin
    Page Should Contain    S361035
    Capture Page Screenshot
    Close Browser

Verify Add Third Student Function
    Open Web 
    Login Into System    ${UserName}    ${Password}
    Page Login Success
    Maximize Browser Window
    # insert student An Vong    s354803
    Add New Student    Ben Carruth    S587273 
    Go To    http://127.0.0.1:8000/viewstudents/
    Page Should Contain    Ben Carruth
    Page Should Contain    S587273
    Capture Page Screenshot
    Close Browser