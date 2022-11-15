*** Settings ***
Documentation       Search Student Functionality
Library             SeleniumLibrary
Resource            ${CURDIR}${/}..\\resource/resource.robot

*** Variables ***


*** Test Cases ***
View and search the first registered student
    Open Web 
    Login Into System    ${UserName}    ${Password}
    Page Login Success
    Search Book ID    	S357617
    There are some book found
    Sleep    2s
    Go To    http://127.0.0.1:8000/viewstudents/
    Page Should Contain    Zhe Wei
    Capture Page Screenshot
    Close Browser

View and search the second registered student
    Open Web 
    Login Into System    ${UserName}    ${Password}
    Page Login Success
    Search Book ID    	s354803
    There are some book found
    Sleep    2s
    Go To    http://127.0.0.1:8000/viewstudents/
    Page Should Contain    An Vong
    Capture Page Screenshot
    Close Browser

View and search the third registered student
    Open Web 
    Login Into System    ${UserName}    ${Password}
    Page Login Success
    Search Book ID    	S361035
    There are some book found
    Sleep    2s
    Go To    http://127.0.0.1:8000/viewstudents/
    Page Should Contain    MD Al Admin
    Capture Page Screenshot
    Close Browser