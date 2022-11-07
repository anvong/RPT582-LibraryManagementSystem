*** Settings ***
Documentation       View Issue Book Functionality
Library             SeleniumLibrary
Resource            ${CURDIR}${/}..\\resource/resource.robot


*** Variables ***


*** Test Cases ***
Verify First Issued Book Of Student
    Open Web 
    Login Into System    ${UserName}    ${Password}
    Page Login Success
    Maximize Browser Window
    
    Go To    http://127.0.0.1:8000/viewissuedbook/
    Page Should Contain    Zhe Wei
    Page Should Contain    S357617
    Page Should Contain    PYTHON Book 1
    Page Should Contain    RPT582 Testing 1
    Page Should Contain    7-11-2022
    Page Should Contain    22-11-2022
    Capture Page Screenshot
    Close Browser

Verify Second Issued Book Of Student
    Open Web 
    Login Into System    ${UserName}    ${Password}
    Page Login Success
    Maximize Browser Window
    
    Go To    http://127.0.0.1:8000/viewissuedbook/
    Page Should Contain    An Vong
    Page Should Contain    s354803
    Page Should Contain    PYTHON Book 2
    Page Should Contain    RPT582 Testing 2
    Page Should Contain    7-11-2022
    Page Should Contain    22-11-2022
    Capture Page Screenshot
    Close Browser

Verify Third Issued Book Of Student
    Open Web 
    Login Into System    ${UserName}    ${Password}
    Page Login Success
    Maximize Browser Window
    
    Go To    http://127.0.0.1:8000/viewissuedbook/
    Page Should Contain    MD Al Admin
    Page Should Contain    S361035
    Page Should Contain    PYTHON Book 3
    Page Should Contain    RPT582 Testing 3	
    Page Should Contain    7-11-2022
    Page Should Contain    22-11-2022
    Capture Page Screenshot
    Close Browser