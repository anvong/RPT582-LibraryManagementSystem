*** Settings ***
Documentation       Search Book Functionality
Library             SeleniumLibrary
Resource            ${CURDIR}${/}..\\resource/resource.robot


*** Variables ***


*** Test Cases ***
Verify View List Of Student
    Open Web 
    Login Into System    ${UserName}    ${Password}
    Page Login Success
    Maximize Browser Window
    
    Go To    http://127.0.0.1:8000/viewstudents/
    Page Should Contain    Ben Carruth
    Page Should Contain    MD Al Admin
    Page Should Contain    An Vong
    Capture Page Screenshot
    Close Browser

