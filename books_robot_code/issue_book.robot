*** Settings ***
Documentation       Issue Book Functionality
Library             SeleniumLibrary
Resource            ${CURDIR}${/}..\\resource/resource.robot

*** Variables ***


*** Test Cases ***
Verify Issue First Book
    Open Web 
    Login Into System    ${UserName}    ${Password}
    Page Login Success
    Maximize Browser Window
    Go To         http://127.0.0.1:8000/bookissue/
    Input Text    id:book1             PYTHON101
    Input Text    id:studentid        S357617
    Click Element    //button[contains(text(),'Submit')]
    Capture Page Screenshot
    Close Browser

Verify Issue Second Book
    Open Web 
    Login Into System    ${UserName}    ${Password}
    Page Login Success
    Maximize Browser Window
    Go To         http://127.0.0.1:8000/bookissue/
    Input Text    id:book1             PYTHON102
    Input Text    id:studentid        s354803
    Click Element    //button[contains(text(),'Submit')]
    Capture Page Screenshot
    Close Browser

Verify Issue Third Book
    Open Web 
    Login Into System    ${UserName}    ${Password}
    Page Login Success
    Maximize Browser Window
    Go To         http://127.0.0.1:8000/bookissue/
    Input Text    id:book1             PYTHON103
    Input Text    id:studentid        S361035
    Click Element    //button[contains(text(),'Submit')]
    Capture Page Screenshot
    Close Browser