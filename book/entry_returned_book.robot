*** Settings ***
Documentation       Issue Book Functionality
Library             SeleniumLibrary
Resource            ${CURDIR}${/}..\\resource/resource.robot

*** Variables ***

*** Test Cases ***
Return and check the first returned book
    Open Web 
    Login Into System    ${UserName}    ${Password}
    Page Login Success
    Maximize Browser Window
    Go To         http://127.0.0.1:8000/returnbook/
    Input Text    id:bookid2             PYTHON101
    Click Element    //button[contains(text(),'Submit')]

    Go To    http://127.0.0.1:8000/dashboard/
    Page Should Contain    PYTHON Book 1
    Page Should Contain    RPT582 Testing 1
    Page Should Contain    Not-Issued   
    Capture Page Screenshot
    Close Browser

Return and check the second returned book
    Open Web 
    Login Into System    ${UserName}    ${Password}
    Page Login Success
    Maximize Browser Window
    Go To         http://127.0.0.1:8000/returnbook/
    Input Text    id:bookid2             PYTHON102
    Click Element    //button[contains(text(),'Submit')]

    Go To    http://127.0.0.1:8000/dashboard/
    Page Should Contain    PYTHON Book 2
    Page Should Contain    RPT582 Testing 2
    Page Should Contain    Not-Issued   
    Capture Page Screenshot
    Close Browser

Return and check the third returned book
    Open Web 
    Login Into System    ${UserName}    ${Password}
    Page Login Success
    Maximize Browser Window
    Go To         http://127.0.0.1:8000/returnbook/
    Input Text    id:bookid2             PYTHON103
    Click Element    //button[contains(text(),'Submit')]

    Go To    http://127.0.0.1:8000/dashboard/
    Page Should Contain    PYTHON Book 3
    Page Should Contain    RPT582 Testing 3
    Page Should Contain    Not-Issued   
    Capture Page Screenshot
    Close Browser